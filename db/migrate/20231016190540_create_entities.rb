class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.references :author_id, null: false, foreign_key: { to_table: :users }
      t.string :name
      t.decimal :amount, default: 0

      t.timestamps
    end
  end
end
