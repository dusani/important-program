class Concert < ApplicationRecord

	validates :name, :artist, :venue, :city, :date, :price, :description, presence: true
end
