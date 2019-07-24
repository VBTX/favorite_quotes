class User < ApplicationRecord
	has_secure_password
	has_many :quotes
	has_many :notes, through: :quotes
end
