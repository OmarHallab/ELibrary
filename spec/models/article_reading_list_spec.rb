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

require 'rails_helper'

RSpec.describe ArticleReadingList, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
