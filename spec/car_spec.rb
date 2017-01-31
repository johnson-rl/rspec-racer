require 'spec_helper'

RSpec.describe Car do
  let(:car) { Car.new }

  describe '::new' do
    it 'sets the initial speed of a car to 0' do
      expect(car.speed).to eq(0)
    end
  end

  describe '#speed' do
    it "has a speed getter method" do
      expect(car.speed).to be >= 0
    end
  end

  describe '#accelerate' do
    it 'increases the speed of car by a given amount'do
      car.accelerate(40)
      expect(car.speed).to eq(40)
    end
  end
end
