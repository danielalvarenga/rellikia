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

require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
