class EntityGroup < ApplicationRecord
  belongs_to :entity
  belongs_to :group

  validates :entity_id, presence: true
  validates :group_id, presence: true
end
