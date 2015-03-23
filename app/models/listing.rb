class Listing < ActiveRecord::Base
  validates_presence_of :address, :square_footage, :beds, :bathrooms, :date_on_market

  validates_inclusion_of :beds, in: 1..99, message: "Please enter a valid integer between 1-99"

  validates_inclusion_of :bathrooms, in: 1..99, message: "Please enter a valid integer between 1-99"

  validates_numericality_of :square_footage, :only_integer => true, :greater_than => 0, message: "Please enter an integer greater than zero"

end
