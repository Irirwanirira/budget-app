class Category < ApplicationRecord
  belongs_to :user
  has_many :transactions, dependent: :destroy

  validates :name, presence: true, length: { in: 1..20 }
  validates :icon, presence: true
end
