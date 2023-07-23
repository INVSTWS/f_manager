class SearchController < ApplicationController
    def search
        @categories = Category.search(params[:query])
    end
end
