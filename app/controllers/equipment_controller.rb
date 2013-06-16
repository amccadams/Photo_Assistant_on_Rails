
class EquipmentController
  # include Formatter

  # attr_accessor :equipment_params

  def initialize 
  end


  def index
      equipments = Equipment.all
      equipments.each_with_index do |equipment, i|
        puts "#{i+1}. #{equipment.name}"
      end
  end

  def create
    puts "Type in the name of the gear you want to add"
      equipments = Equipment.new

      while true
        print "Gear: "
        equipment_name = gets.chomp
        equipments.name = equipment_name

      while true
        puts "Type in the serial number of the gear you want to add."
        print "Serial number: "
        serial_number = gets.chomp 
        
      end

      if equipments.save
        puts "Great Job, You added your equipment!"
      else
        puts "Failure :( #{equipments.errors.full_messages.join(", ")}"
      end
  end

  def destroy
      matching_equipments = Equipment.where(name: @equipment_params[:equipment][:name]).all
      matching_equipments.each do |equipment|
        equipment.destroy
      end
  end
# puts "Type gear name:"
#       name = stdin.gets.chomp!
#       puts "Type gear serial number:"
#       serial = stdin.gets.chomp!
#       equipments = Equipment.new
#       equipments.name = name
#       equipments.serial = serial
#       if equipments.save
end
end