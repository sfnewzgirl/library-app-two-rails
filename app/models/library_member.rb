class LibraryMember < ApplicationRecord
  belongs_to :member
  belongs_to :library
end
