class RecipesController < ApplicationController
    # before_action :find_recipe, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!

    def index 
        @recipes = current_user.recipes
    end 

    def show
        # raise params.inspect
        @recipe = current_user.recipes.find_by(id: params[:id]) 
    end 

    def new 
        @recipe = current_user.recipes.build
    end 

    def edit 
    end 

    def create 
        # if params[:recipe][:category_id] == " "
        @recipe = current_user.recipes.build(recipe_params)
        if  @recipe.save
			redirect_to @recipe, notice: "Successfully created new recipe"
		else
			redirect_to new_recipe_path
		end
    end 

    def update 
    end 

    def destroy 
        @recipe.destroy
        redirect_to root_path, notice: "Successfully delted recipe"
    end 

    private 

    def find_recipe
        @recipe = Recipe.find_by(id: params[:id])
    end 

    def recipe_params
        params.require(:recipe).permit(:user_id, :title, :description, :directions, :ingredients, :category_id, category_attributes: [:name])
    end 

end 


