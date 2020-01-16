class RecipesController < ApplicationController
    # before_action :find_recipe, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!

    def index 
        @recipes = current_user.recipes
    end 

    def show
        @recipe = current_user.recipes.find_by(id: params[:id]) 
    end 

    def new 
        @recipe = Recipe.new
        # @recipe.ingredients.build(name: 'name')
    end 

    def edit 
    end 

    def create 
        @recipe = current_user.recipes.build(recipe_params)

        if  @recipe.save
			redirect_to @recipe, notice: "Successfully created new recipe"
		else
			render 'new'
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
        params.require(:recipe).permit(:user_id, :title, :description, :directions)
    end 

end 


