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

class ReadingList < ActiveRecord::Base
  belongs_to :user
  has_many :article_reading_lists
  has_many :articles, through: :article_reading_lists
end
