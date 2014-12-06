class FinancialControlController < ApplicationController

  def index
    @entry_details = EntryDetail.include_all.
        where(year: Date.today.year).
        order('entry_details.month ASC').
        order('categories.name ASC').
        order('entry_details.day ASC').
        order('entry_details.id ASC')

    @categories = Category.with_entries.
        where({'entry_details.year' => Date.today.year}).
        group('categories.id').
        order('categories.name ASC')

    @entry = Entry.new
    @entry.entry_details.build
  end
end
