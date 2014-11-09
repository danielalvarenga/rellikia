# == Schema Information
#
# Table name: entry_details
#
#  id          :integer          not null, primary key
#  amount      :integer
#  amount_paid :integer
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
#
# Indexes
#
#  index_entry_details_on_entry_id  (entry_id)
#

class EntryDetail < ActiveRecord::Base
  belongs_to :entry

  scope :revenues, -> { where('`entries`.`positive` = 1') }
  scope :expenses, -> { where('`entries`.`positive` = 0') }
  scope :include_all, -> { joins(entry: [:category, :tags]).group("`entries`.`id`") }
  scope :in_category, -> (category) { where("`categories`.`id` = #{category.id}") }
  scope :in_month, -> (month_number) { where("`entry_details`.`month` = #{month_number}") }
end
