require_relative '../src/rabbit'
require_relative '../src/world'

describe Rabbit do
  expect(Rabbit).to receive(:root_rabbit).with(Rabbit.new)

  describe 'puts rabbits number' do
    let(:world) {World.new}
    it '#should return 2 rabbits when first month' do
      expect(world.count(1)).to eq 1
    end
  end

  describe 'puts rabbits number' do
    let(:world_other) {World.new}
    it 'should return 4 rabbits when 3rd month' do
      expect(world_other.count(3)).to eq 2
    end
  end
end
