class ShootsController < ApplicationController
 # attr_accessor :equipment_params

  def initialize 
  end
  
  def index
    @shoots = Shoot.all

  end

 def new
    @shoot = Shoot.new
    # @equipment_types = Equipment_Type.find(:all)
  end

  def show
    @shoots = Shoot.find(params[:id])
  end

  # def create
  #   @equipment = Equipment.new(params[:equipment])
  #   if @equipment.save
  #     flash[:notice] = "Your equipment was added to the inventory"
  #   else
  #     flash[:alert] = "Your equipment wasn't added to the inventory"
  #   end
  #   redirect_to :root
  # end

  def create
    @shoot = Shoot.new(params[:shoot])
    if @shoot.save
      redirect_to :action =>'new'
    # else
    #    @shoot = Shoot.find(:all)
    #   render :action => 'new'
    end
  end




  def update
    @shoot = Shoot.find(params[:id])
    if @shoot.update_attributes(params[:shoot])
      redirect_to :action => 'show', :id => @shoot
    # else
    #   @shoot_types = Shoot_Type.find(:all)
    #   render :action => 'edit'
    end
  end

    def edit
    @shoot = Shoot.find(params[:id])
    @shoot_count = Shoot.count
  end

  # def edit
  #   @equipment = Equipment.find(params[:id])
  #   # @equipment_types = Equipment_Type.find(:all)
  # end

  def delete
    @shoot = Shoot.find(params[:id])
  end


  def destroy
    @shoot = Shoot_Type.find(params[:id])
    @shoot.destroy
    end
end



