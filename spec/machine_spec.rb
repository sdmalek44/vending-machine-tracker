require 'rails_helper'


describe 'machine spec' do
  it 'can calculate average snack price' do
    sam = Owner.create(name: "Sam's Snacks")
    machine = sam.machines.create(location: "Don's Mixed Drinks")
    snack1 = machine.snacks.create!(name: 'oreos', price: 100)
    snack2 = machine.snacks.create!(name: 'thing', price: 200)

    expect(machine.average_snack_price).to eq(1.5)
  end
end
