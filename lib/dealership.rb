class Dealership
  attr_reader :name,
              :address,
              :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count
    @inventory.count
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    if @inventory.count == 0
      false
    else
      true
    end
  end

  def cars_by_make(make)
    @inventory.find_all do |car|
      car.make == make
    end
  end

  def total_value
    cost_array = []
    @inventory.each do |car|
      cost_array << car.total_cost
    end
    cost_array.reduce(0){|sum, n| sum + n}
  end

  def details
    {
    "total_value" => total_value,
    "address" => @address
    }
  end
end