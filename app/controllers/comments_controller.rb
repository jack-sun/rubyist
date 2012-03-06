#coding: utf-8 
class CommentsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(:parent_id => params[:parent_id])
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(params[:comment].merge(:user => current_user))
    if @comment.save
      flash[:success] = "评论成功！"
      redirect_to article_path(@article)
    else
      flash.now[:error] = "评论失败！"
      render "comments/new"
    end
  end

  def destroy
    @comment = current_user.comments.find_by_id(params[:id])
    if @comment.has_children?
      flash[:error] = "被引用过的回复不能删除！"
    else
      flash[:success] = "评论删除成功！"
      @comment.destroy
    end
    redirect_to article_path(@comment.article)
  end
end
