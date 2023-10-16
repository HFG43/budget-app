class CreateGroupEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :group_entities do |t|
      t.integer :author_id
      t.integer :group_id
      
      t.timestamps
    end
  end
end
