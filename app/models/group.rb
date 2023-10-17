class Group < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :entity_groups, dependent: :destroy
  has_many :entities, through: :entity_groups

  validates :name, presence: true
  validates :icon, presence: true
end
