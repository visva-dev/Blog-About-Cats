class PagesController < ApplicationController
  def home
    @categories = Category.all

    cate = params[:cate]

    if !cate.nil?
      @articles = Article.where(:category_id => cate)
    else
      @articles = Article.all
    end
  end
  
end
