class Library < ApplicationRecord
  has_many :library_members, dependent: :destroy
  has_many :members, through: :library_members
end
