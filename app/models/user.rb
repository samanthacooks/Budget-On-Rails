class User < ApplicationRecord
  has_many :accounts
  has_many :bills
  has_many :incomes
  has_many :budgets
  has_many :goals, through: :budgets

  validates :first_name, :last_name, :email, presence: true


  has_secure_password
end
