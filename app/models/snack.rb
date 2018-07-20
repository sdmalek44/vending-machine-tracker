class Snack < ApplicationRecord
  has_many :machine_snacks
  has_many :machines, through: :machine_snacks

  def money
    price.to_f / 100
  end

  def money_string
    "$#{money}"
  end

end
