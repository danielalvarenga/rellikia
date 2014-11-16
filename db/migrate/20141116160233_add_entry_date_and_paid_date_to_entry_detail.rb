class AddEntryDateAndPaidDateToEntryDetail < ActiveRecord::Migration
  def change

    add_column :entry_details, :entry_date, :date
    add_column :entry_details, :paid_date, :date

  end
end
