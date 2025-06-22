class Dimension < ApplicationRecord
	validates :name, :unit, presence: true
end
