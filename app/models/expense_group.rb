class ExpenseGroup < ApplicationRecord
  belongs_to :expense
  belongs_to :group

  validates :entity_id, presence: true
  validates :group_id, presence: true
end
