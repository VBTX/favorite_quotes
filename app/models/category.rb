class Category < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :quotes

  validates :name, presence: true
  validates_uniqueness_of :name
end
