require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  it "1. exists" do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership).to be_an_instance_of(Dealership)
  end

  it "2. has an array attribute called inventory that defaults to a blank array" do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory).to eq([])
  end

  it "3. can count number of cars in inventory" do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory_count).to eq(0)
  end

  it "4. can add cars to inventory" do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)

    dealership.add_car(car_1)
    dealership.add_car(car_2)
    expect(dealership.inventory).to eq ([car_1, car_2])
    expect(dealership.inventory_count).to eq(2)
  end
    
end