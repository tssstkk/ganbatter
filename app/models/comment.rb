# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  bot_name   :string
#  content    :text
#  img        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  article_id :integer          not null
#  bot_id     :integer          default(0)
#  user_id    :integer          not null
#
# Indexes
#
#  index_comments_on_article_id  (article_id)
#  index_comments_on_user_id     (user_id)
#
# Foreign Keys
#
#  article_id  (article_id => articles.id)
#  user_id     (user_id => users.id)
#
class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user
  validates  :content, presence: true, length: { maximum: 100 }
end
