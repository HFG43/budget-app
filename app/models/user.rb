class User < ApplicationRecord
  has_many :entities, class_name: 'Entity', foreign_key: 'author_id_id'
  has_many :groups, class_name: 'Group', foreign_key: 'user_id'

  validates :name, presence: true
end
