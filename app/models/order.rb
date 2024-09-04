class Order < ApplicationRecord
  belongs_to :user
  validates :amount, presence: true
  # Add other validations and methods as needed
end
