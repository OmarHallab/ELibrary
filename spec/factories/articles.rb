# == Schema Information
#
# Table name: articles
#
#  id              :integer          not null, primary key
#  title           :string
#  online_location :string
#  author_name     :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :article do
    title "MyString"
online_location "MyString"
author_name "MyString"
  end

end
