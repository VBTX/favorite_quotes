class Quote < ApplicationRecord
	belongs_to :user
	has_many :notes

	validates :text, presence: true
	validates :author, presence: true
end
