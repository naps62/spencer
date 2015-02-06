class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.date :date
      t.integer :expenses_count

      t.timestamps
    end

    add_column :expenses, :day_id, :integer

    Expense.all.map(&:save)

    remove_column :expenses, :date
    end
end
