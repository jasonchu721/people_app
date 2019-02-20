class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
  end

  def show
    @creature = Creature.find(params[:id])
  end

  def new
    @creature = Creature.new
  end

  def create
    @creature = Creature.new(creature_params)
 
    if @creature.save
      redirect_to creatures_path
    else
      render :new
    end
  end

  def edit
    @creature = Creature.find(params[:id])
  end

  def update
    @creature = Creature.find(params[:id])
  
    if @creature.update(creature_params)
      redirect_to creature_path
    else
      render :edit
    end
  end

  def destroy
    Creature.find(params[:id]).destroy
    redirect_to creatures_path
  end
 
  private
 
    def creature_params
      params.require(:creature).permit(:name, :age, :hair_color, :eye_color, :gender, :alive)
    end


end
