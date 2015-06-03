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

class ArticleReadingList < ActiveRecord::Base
  belongs_to :article
  belongs_to :reading_list
end
