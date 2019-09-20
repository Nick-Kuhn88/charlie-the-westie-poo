class Compliment < ApplicationRecord
  validates :message, presence: true, length: { minimum: 3, maximum: 100 }
end
