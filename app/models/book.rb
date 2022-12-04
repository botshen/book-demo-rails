class Book < ApplicationRecord
  validates :author, presence: true, length: { minimum: 1 }
  validates :title, presence: true, length: { minimum: 3 }
end
