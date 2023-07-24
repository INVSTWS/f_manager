class CategorySearchController < ApplicationController
  def index
    search_field = params[:search].present? ? params[:search] : "*"

    @categories = if params[:search].present?
      Category.search(search_field, fields: %i[name description])
    else
      Category.search(search_field, fields: %i[name])
    end

    respond_to do |format|
      format.html{render :index}
      format.turbo_stream do 
        render turbo_stream:
            turbo_stream.update("categories", 
                                partial: "categories/categories",
                                locals: {categories: @categories})
      end
    end
  end
end
