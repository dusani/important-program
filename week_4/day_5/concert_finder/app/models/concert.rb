class Concert < ApplicationRecord
	has_many :comments

	validates :name, :artist, :venue, :city, :date, :price, :description, presence: true
end
