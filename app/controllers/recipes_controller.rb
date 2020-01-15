class RecipesController < ApplicationController
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

        if @recipe.save
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

    def set_recipe
        @recipe = Recipe.find(params[:id])
    end 

    def recipe_params
        params.require(:recipe).permit(:user_id, :title, :description, :directions)
    end 

end 