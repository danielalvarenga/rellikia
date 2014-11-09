# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string(20)
#  created_at :datetime
#  updated_at :datetime
#

class Tag < ActiveRecord::Base
  has_and_belongs_to_many :entries
end
