class ExercisesController < ApplicationController

  before_action :set_exercise, only: [:show, :edit, :update, :destroy]


  def index
    @exercises = Exercise.all
  end

  def show
  end

  def edit
  end

  def update
    if @exercise.update(exercise_params)
      redirect_to exercises_path, success: "l'éxercice a été modifié avec succès"
     else
       render 'edit'
     end
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create(exercise_params)
    redirect_to exercise_path(@exercise.id), success: "vous venez d'ajouter un nouvel exercise"
  end

  def destroy
    @exercise.destroy
    redirect_to exercises_path, success: "Vous venez de supprimer un exercise"
  end

  private
  def exercise_params
    params.require(:exercise).permit(:name, :discipline, :description)
  end
  def set_exercise
    @exercise = Exercise.find(params[:id])
  end
end
