require 'rails_helper'


describe 'Snack Model tests' do
  describe 'instance methods' do
    it 'can calculate money and money string' do
      sam = Owner.create(name: "Sam's Snacks")
      machine = sam.machines.create(location: "Don's Mixed Drinks")
      snack1 = machine.snacks.create!(name: 'oreos', price: 100)
      snack2 = machine.snacks.create!(name: 'thing', price: 200)


      expect(snack1.money).to eq(1.0)
      expect(snack1.money_string).to eq("$1.0")
    end
  end
end
