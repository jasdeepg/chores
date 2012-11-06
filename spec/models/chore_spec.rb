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

require 'spec_helper'

describe Chore do
  pending "add some examples to (or delete) #{__FILE__}"
end
