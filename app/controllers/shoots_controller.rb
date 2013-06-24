class ShootsController < ApplicationController
 # attr_accessor :equipment_params

  
  def index
    @shoots = Shoot.all
  end

 def new
    @shoot = Shoot.new
  end

  def show
    @shoot = Shoot.find(params[:id])
    @shoot_equipment = @shoot.equipments.all
    @equipments = Equipment.all
  end

  def create
    @shoot = Shoot.new(params[:shoot])
    if @shoot.save
      redirect_to :action =>'new'
    else
      flash[:alert] = "Your shoot wasn't added."
      render :action => 'new'
    end
  end

  def update
    @shoot = Shoot.find(params[:id])
    if @shoot.update_attributes(params[:shoot])
      redirect_to shoot_path(@shoot)
    else
      flash[:alert] = "Your shoot wasn't edited."
      redirect_to shoots_path
    end
  end

    def edit
    @shoot = Shoot.find(params[:id])
    @shoot_count = Shoot.count
  end

  def destroy
    @shoot = Shoot.find(params[:id])
    @shoot.destroy
    flash[:alert] = "Your shoot was deleted."
    redirect_to shoots_path
  end

  def add_equipment
    @shoot = Shoot.find( params["id"] )
    @equipment = Equipment.find( params["equipment"] )
    EquipmentList.create(equipment_id: @equipment.id, shoot_id: @shoot.id)
    redirect_to shoot_path(@shoot)
  end

  def remove_equipment
    @shoot = Shoot.find( params["id"] )
    @equipment = Equipment.find( params["equipment"] ) 
    @join = EquipmentList.where( shoot_id: @shoot.id, equipment_id: @equipment.id).first
    @join.destroy
    redirect_to shoot_path(@shoot)
  end
end



