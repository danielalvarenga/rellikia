# == Schema Information
#
# Table name: entry_details
#
#  id          :integer          not null, primary key
#  amount      :decimal(10, 2)
#  amount_paid :decimal(10, 2)
#  day         :integer
#  month       :integer
#  year        :integer
#  day_paid    :integer
#  month_paid  :integer
#  year_paid   :integer
#  entry_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#  paid        :boolean
#  entry_date  :date
#  paid_date   :date
#
# Indexes
#
#  index_entry_details_on_entry_id  (entry_id)
#

require 'test_helper'

class EntryDetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
