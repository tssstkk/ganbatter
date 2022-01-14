# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  likes_count :integer          default(0)
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  bot_id      :integer          default(0)
#  user_id     :integer          not null
#
# Indexes
#
#  index_articles_on_user_id                 (user_id)
#  index_articles_on_user_id_and_created_at  (user_id,created_at)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_rich_text :content
  has_many :likes, dependent: :destroy
  has_many :bots

  validates :user_id, presence: true
  validates :title,   presence: true, length: {maximum: 100}
end
