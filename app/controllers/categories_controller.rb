class CategoriesController < ApplicationController

    def show 
        @categories = current_user.recipes.find_by(id: params[:id]) 
        # @categoies = Categories.find(params[:id])
        @recipes = @categories.recipes
    end 

    def index
        @category = Category.all.order(:title)
    end 

end
