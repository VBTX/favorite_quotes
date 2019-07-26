class User < ApplicationRecord
	has_secure_password
	has_many :quotes
	has_many :notes, through: :quotes

	validates :name, presence: true
	validates :email, presence: true
	validates :email, uniqueness: true
end
