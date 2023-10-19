class ExpenseGroup < ApplicationRecord
  belongs_to :expense, class_name: 'Expense'
  belongs_to :group, class_name: 'Group'

  validates :entity_id, presence: true
  validates :group_id, presence: true
end
