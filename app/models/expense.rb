class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :expense_groups
  has_many :groups, through: :expense_groups

  validates :name, presence: true
  validates :amount, presence: true, numericality: { only_numeric: true, greater_than_or_equal_to: 0 }
end
