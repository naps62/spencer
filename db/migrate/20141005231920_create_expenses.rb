class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.money :value
      t.datetime :date
      t.string :description

      t.timestamps
    end
  end
end
