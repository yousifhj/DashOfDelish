class CategoriesController < ApplicationController

    def show 
        @category = Category.find(params[:id])
        @recipes = @category.recipes
    end 

    def index
        @category = current_user.category
    end 

end
