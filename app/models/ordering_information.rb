class OrderingInformation < ApplicationRecord
	validates :cat_no, :description, :std_pack, presence: true
	has_one_attached :image
end
