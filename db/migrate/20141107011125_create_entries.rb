class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.boolean :positive
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
