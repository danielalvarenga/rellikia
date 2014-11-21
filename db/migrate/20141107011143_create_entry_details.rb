class CreateEntryDetails < ActiveRecord::Migration
  def change
    create_table :entry_details do |t|
      t.decimal :amount, precision: 10, scale: 2
      t.decimal :amount_paid, precision: 10, scale: 2
      t.integer :day
      t.integer :month
      t.integer :year
      t.integer :day_paid
      t.integer :month_paid
      t.integer :year_paid
      t.references :entry, index: true

      t.timestamps
    end
  end
end
