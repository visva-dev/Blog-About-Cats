class PagesController < ApplicationController
  def home
    @categories = Category.all
    cate = params[:cate]
    @articles = if !cate.nil?
                  Article.where(category_id: cate).includes([:user]).order(created_at: :desc)
                    .paginate(page: params[:page], per_page: 3)
                else
                  @articles = Article.order(created_at: :desc)
                    .includes([:user]).paginate(page: params[:page], per_page: 3)
                end
  end
end
