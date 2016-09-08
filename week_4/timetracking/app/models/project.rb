class Project < ApplicationRecord
	has_many :time_entries

	validates :name, presence: true

	validates :email, presence: true, uniqueness: true

	validates :phone_number, length: { is: 10 }
end
