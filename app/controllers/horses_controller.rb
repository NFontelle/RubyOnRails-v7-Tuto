class HorsesController < ApplicationController
  
  before_action :set_horse, only: [:show, :edit, :update, :destroy]
  
  def index
    @horses = Horse.all
  end

  def show
  end

  def edit
  end

  def update
    
  end

  def new
    @horse = Horse.new
  end

  def create
    @horse = Horse.create(horse_params)
    redirect_to horse_path(@horse.id), success: "Vous avez ajouté un nouveau cheval"
  end

  def destroy
    @horse.destroy
    redirect_to horses_path, success: "le cheval a bien été supprimé"
  end

  private
  def set_horse
    @horse = Horse.find(params[:id])
  end
  def horse_params
    params.require(:horse).permit(:name, :size, :age, :sex, :breed)
  end
end