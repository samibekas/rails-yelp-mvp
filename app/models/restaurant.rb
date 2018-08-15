class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :phone_number, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  # validates :phone_number, format: { with: /(?:\+?|\b)[0-9]{10}\b/,
  #   message: "wrong phonen number format" }
end
