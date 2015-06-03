# == Schema Information
#
# Table name: article_reading_lists
#
#  id              :integer          not null, primary key
#  article_id      :integer
#  reading_list_id :integer
#  state           :string
#  active          :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :article_reading_list do
    article nil
reading_list nil
state "MyString"
active false
  end

end
