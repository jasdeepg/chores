# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  phone      :integer
#  chore_done :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ref_id     :integer
#

class User < ActiveRecord::Base
  attr_accessible :chore_done, :email, :name, :phone, :ref_id
  has_one :chore, :primary_key=>:ref_id

  def chore_done?
  	self.chore_done
  end
end
