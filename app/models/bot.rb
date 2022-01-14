# == Schema Information
#
# Table name: bots
#
#  id          :integer          not null, primary key
#  bot_content :string
#  bot_name    :string
#  bot_img     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Bot < ApplicationRecord
  has_many :comments, dependent: :destroy

  def self.find_bot
    # 任意にコメントするBot情報を取得する
    bot_count = Bot.count
    bot_id    = rand(1..bot_count)
    bot       = Bot.find(bot_id)
  end
end
