# == Schema Information
#
# Table name: entries
#
#  id          :integer          not null, primary key
#  positive    :boolean
#  title       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  category_id :integer
#

class Entry < ActiveRecord::Base
  has_many :entry_details, :dependent => :destroy
  accepts_nested_attributes_for :entry_details, :reject_if => lambda { |a| }

  belongs_to :category
  has_and_belongs_to_many :tags
end
