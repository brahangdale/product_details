class Connection < ApplicationRecord
	validates :title, :unit, presence: true
end
