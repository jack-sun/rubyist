# -*- encoding : utf-8 -*-
class User::TagsController < User::BaseController
  before_filter :find_user
  
  def index
    @tags = @user.articles.tag_counts_on(:tags)
  end

  def show
    #TODO make sure tags belongs to user
    @tag = ActsAsTaggableOn::Tag.find_by_name(params[:id])
    @articles = Article.tagged_with(@tag.name, :on => :tags)
  end

end
