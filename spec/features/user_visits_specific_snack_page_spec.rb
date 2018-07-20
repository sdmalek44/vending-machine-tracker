require 'rails_helper'


describe 'when user visits vending machine show page ' do
  it 'sees name of all snacks in vending machine and their price' do
    sam = Owner.create(name: "Sam's Snacks")
    machine = sam.machines.create(location: "Don's Mixed Drinks")
    snack1 = machine.snacks.create!(name: 'oreos', price: 100)
    snack2 = machine.snacks.create!(name: 'oreos', price: 200)

    visit snack_path(snack1)


    expect(page).to have_content(snack1.name)
    expect(page).to have_content(snack1.money_string)
    expect(page).to have_content(machine.location)
    expect(page).to have_content(machine.average_snack_price)
    expect(page).to have_content(snack1.name)
    expect(page).to have_content(snack2.name)
  end
end
