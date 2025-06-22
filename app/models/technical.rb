class Technical < ApplicationRecord
	validates :title, :value, presence: true
end
