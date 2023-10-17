class CreateExpenseGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :expense_groups do |t|
      t.references :expense, null: false, foreign_key: { to_table: :expenses }
      t.references :group, null: false, foreign_key: { to_table: :groups }
      
      t.timestamps
    end
  end
end
