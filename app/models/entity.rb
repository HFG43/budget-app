class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id_id'
  has_many :entity_groups, dependent: :destroy
  has_many :groups, through: :entity_groups

  validates :name, presence: true
  validates :amount, presence: true, numericality: { only_numeric: true, greater_than_or_equal_to: 0 }
end
