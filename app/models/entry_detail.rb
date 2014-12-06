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

class EntryDetail < ActiveRecord::Base
  belongs_to :entry

  before_create :split_entry_date

  scope :revenues, -> { where('entries.positive is true') }

  scope :expenses, -> { where('entries.positive is false') }

  scope :include_all, -> { joins(:entry => :category).
                            joins("LEFT JOIN entries_tags ON entries_tags.entry_id = entries.id").
                            joins("LEFT JOIN tags ON tags.id = entries_tags.tag_id").
                            group("entries.id") }

  scope :in_category, -> (category) { where("categories.id = #{category.id}")}

  scope :in_month, -> (month_number) { where("entry_details.month = #{month_number}") }

  def split_entry_date
    self.day = self.entry_date.strftime('%d')
    self.month = self.entry_date.strftime('%m')
    self.year = self.entry_date.strftime('%Y')
  end
end
