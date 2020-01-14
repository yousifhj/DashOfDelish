class RecipeController < ApplicationController
    before_action :set_recipe, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!

    def index 
        @recipe = Recipe.all 
    end 

    def show
    end 

    def new 
        @recipe = Recipe.new
    end 

    def edit 
    end 

    def create 
        @recipe = Recipe.new(recipe_params)
    end 

    def update 
    end 

    def destroy 
        @recipe.destroy
    end 

    private 

    def set_recipe
        @recipe = Recipe.find(params[:id])
    end 

    def recipe_params
        params.require(:recipe).permit(:user_id, :title, :description)
    end 

end 