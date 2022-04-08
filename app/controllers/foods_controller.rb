class FoodsController < ApplicationController

  before_action :set_food, only: [:show, :edit, :update, :destroy]

  def index
    @foods = Food.all
  end

  def show
  end

  def edit
  end

  def update
    if @food.update(food_params)
      redirect_to foods_path, success: "l'alimnet a été modifié avec succès"
     else
       render 'edit'
     end
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.create(food_params)
    redirect_to food_path(@food.id), success: "un nouvel aliment a été ajouté"
  end

  def destroy
    @food.destroy
    redirect_to foods_path, success: "l'aliment a bien été supprimé"
  end
  
  private
  def set_food
    @food = Food.find(params[:id])
  end
  def food_params
    params.require(:food).permit(:variety, :brand)
  end
end
