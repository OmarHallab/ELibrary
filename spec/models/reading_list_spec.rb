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

require 'rails_helper'

RSpec.describe ReadingList, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
