class EquipmentsController < ApplicationController
  # include Formatter

  # attr_accessor :equipment_params

  def initialize 
  end
  
  def index
    @equipments = Equipment.all

  end

  def new
    @equipment = Equipment.new
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def create
    @equipment = Equipment.new(params[:equipment])
    if @equipment.save
      flash[:notice] = "Your equipment was added to the inventory"
    else
      flash[:alert] = "Your equipment wasn't added to the inventory"
    end
    redirect_to :root
  end

    def edit
    @equipment = Equipment.find(params[:id])
    @equipment_count = Equipment.count
  end

  def delete
    @equipment = Equipment.find(params[:id])
  end

  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy
    end
end


