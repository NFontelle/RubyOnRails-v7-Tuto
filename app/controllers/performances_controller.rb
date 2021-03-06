class PerformancesController < ApplicationController

  before_action :set_performance, only: [:show, :edit, :update, :destroy]

  def index
    @performances = Performance.includes(:horse).all
  end

  def show
  end

  def edit
  end

  def update
    if @performance.update(performance_params)
      redirect_to performances_path, success: "l'article a été modifié avec succès"
     else
       render 'edit'
     end
  end

  def new
    @performance = Performance.new
  end

  def create
    @performance = Performance.create(performance_params)
    redirect_to performance_path(@performance.id), success: "vous avez ajouté une nouvelle performance"
  end

  def destroy
    @performance.destroy
    redirect_to performances_path, success: "la performance a bien été supprimée"
  end

  private
  def performance_params
    params.require(:performance).permit(:discipline, :event, :rank, :observation, :horse_id)
  end
  def set_performance
    @performance = Performance.find(params[:id])
  end
end
