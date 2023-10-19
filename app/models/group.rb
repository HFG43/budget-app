class Group < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :expense_groups
  has_many :expenses, through: :expense_groups

  validates :name, presence: true
  validates :icon, presence: true
end
