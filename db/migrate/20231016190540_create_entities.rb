class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.bigint :author_id
      t.string :name
      t.decimal :amount

      t.timestamps
    end
  end
end
