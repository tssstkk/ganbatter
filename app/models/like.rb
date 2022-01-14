# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  article_id :integer
#
# Indexes
#
#  index_likes_on_article_id  (article_id)
#
class Like < ApplicationRecord
  belongs_to :article, counter_cache: true
end
