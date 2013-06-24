class EquipmentsController < ApplicationController
  # include Formatter
  
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
    @equipment = Equipment.create(params[:equipment])
    if @equipment.save
       redirect_to :action => 'new'
    else
      flash[:notice] = "Your equipment wasn't added to the inventory"
      render :action => 'new'
    end
  end

  def update
    @equipment = Equipment.find(params[:id])
    if @equipment.update_attributes(params[:equipment])
      redirect_to :action => 'show', :id => @equipment
    else
      @equipment_types = Equipment_Type.find(:all)
      render :action => 'edit'
    end
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
    flash[:alert] = "Your equipment was deleted from the inventory"
    redirect_to :action => 'index'
  end
end



