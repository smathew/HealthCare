# == Schema Information
# Schema version: 20101015135015
#
# Table name: hb_logins
#
#  id             :integer         not null, primary key
#  account_number :string(255)
#  pin            :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class HbLogin < ActiveRecord::Base
	validates_presence_of :account_number, :pin
end
