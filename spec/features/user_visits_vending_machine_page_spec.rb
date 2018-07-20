
require 'rails_helper'


describe 'when user visits vending machine show page ' do
  it 'sees name of all snacks in vending machine and their price' do
    sam = Owner.create(name: "Sam's Snacks")
    machine = sam.machines.create(location: "Don's Mixed Drinks")
    snack1 = machine.snacks.create!(name: 'oreos', price: 100)
    snack2 = machine.snacks.create!(name: 'thing', price: 200)

    visit machine_path(machine)

    expect(page).to have_content(snack1.name, snack1.money)
    expect(page).to have_content(snack2.name, snack2.money)
  end
end
