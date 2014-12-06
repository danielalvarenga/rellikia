# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(30)
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base
  has_many :entries

  validates :name, presence: true

  scope :ascend_name, -> { order('categories.name ASC') }
  scope :with_entries, -> { joins(entries: [:entry_details]).group('categories.id') }
  scope :revenues, -> { where('entries.positive is true') }
  scope :expenses, -> { where('entries.positive is false') }
  scope :in_month, -> (month_number) { where("entry_details.month = #{month_number}") }

end
