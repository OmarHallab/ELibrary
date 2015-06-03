# == Schema Information
#
# Table name: reading_lists
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :reading_list do
    user nil
title "MyString"
  end

end
