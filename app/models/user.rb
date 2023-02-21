class User < ApplicationRecord

  has_many :categories
  has_many :transactions
  validates :name, presence:true, length: {in: 1..20}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
