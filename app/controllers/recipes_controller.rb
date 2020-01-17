class RecipesController < ApplicationController
    # before_action :find_recipe, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
    
    

    def index 
        @recipes = current_user.recipes
    end 

    def show
        #raise params.inspect
        @recipe = current_user.recipes.find_by(id: params[:id]) 
    end 

    def new 
        @recipe = current_user.recipes.build
    end 

    def edit 
        @recipe = Recipe.find(params[:id])
    end

    def create 
        @recipe = current_user.recipes.build(recipe_params)
        if @recipe.valid?
           @recipe.save
            redirect_to @recipe
            flash.notice = "Successfully created new recipe"
		else
			render :new
		end
    end 

    def update 
        @recipe = current_user.recipes.find(params[:id])
        if @recipe.update(recipe_params)
            redirect_to @recipe
            flash.notice = "Successfully updated the recipe"
        else
            redirect_to edit_recipe_path(@recipe)
        end
    end

    def destroy 
        @recipe = Recipe.find_by_id(params[:id])

        @recipe.delete
        flash.notice = "Successfully delted recipe"
        redirect_to root_path
    end 

    private 

    def find_recipe
        @recipe = Recipe.find_by(id: params[:id])
    end 

    def recipe_params
        params.require(:recipe).permit(:user_id, :title, :description, :directions, :ingredients, :category_id, category_attributes: [:name])
    end 

end 


