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

class Article < ActiveRecord::Base
  has_many :article_reading_lists
  has_many :reading_lists, through: :article_reading_lists
  belongs_to :user

#code snippet to upload images
  has_attached_file :image, styles: { medium: "300x400#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
