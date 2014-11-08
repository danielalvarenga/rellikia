class FinancialControlController < ApplicationController
  def index
    @entries = EntryDetail.where(year: Date.today.year).
        order('month ASC').order('day ASC').order('id ASC')
  end
end
