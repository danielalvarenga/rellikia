class AddColumnPaidToEntryDetails < ActiveRecord::Migration
  def change
    add_column :entry_details, :paid, :boolean
  end
end
