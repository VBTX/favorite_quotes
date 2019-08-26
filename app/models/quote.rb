class Quote < ApplicationRecord
	belongs_to :user
	has_many :notes
	belongs_to :category

	validates :text, presence: true
	validates :author, presence: true
end
