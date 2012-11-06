# == Schema Information
#
# Table name: chores
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  periodStart :date
#

class Chore < ActiveRecord::Base
  attr_accessible :name, :user_id, :periodStart, :timeStart, :testTime, :sample
  belongs_to :user

  def update_time
  	self.update_attributes(sample: Time.now)
  end

  def send_one_week_before
    UserMailer.welcome_email(@user).deliver
  end

  def send_one_day_before
  	
  end

  def send_day_of

  end
end
