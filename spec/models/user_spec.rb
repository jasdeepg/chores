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

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
