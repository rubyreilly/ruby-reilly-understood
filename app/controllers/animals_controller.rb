class AnimalsController < ApplicationController
  before_action :find_animal, only: [:show, :update, :destroy]
  before_action :get_all_animals, only: [:index, :destroy]

  def index
    render json: @animals
  end

  def show
    render json: @animal
  end

  def create
    @animal = Animal.create(animal_params)
      render json: @animal
  end

  def update
    @animal.update(animal_params)
    render json: @animal
  end

  def destroy
    @animal.destroy
    render json: @animals
  end

  private

  def find_animal
    @animal = Animal.find(params[:id])
  end

  def get_all_animals
    @animals = Animal.all.sort_by{|animal| animal.animal_type}
  end

  def animal_params
    params.require(:animal).permit(:animal_type)
  end

end
