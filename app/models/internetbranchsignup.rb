# == Schema Information
# Schema version: 20101015130608
#
# Table name: internetbranchsignups
#
#  id         :integer         not null, primary key
#  agree      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Internetbranchsignup < ActiveRecord::Base
	validate :is_checked

  def is_checked
    errors.add(:base, "You must agree to these terms and conditions.") unless agree == 'yes'
  end
end
