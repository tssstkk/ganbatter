require 'clockwork'
# clockwork内でRailsを使う設定をする
require File.expand_path('../boot', __FILE__)
require File.expand_path('../environment', __FILE__)
require './app/models/bot.rb'

module Clockwork

  handler do |job|
    puts 'Bot start running!'
    # 任意にコメントするBot情報を取得する
    bot = Bot.find_bot
    # Botがコメントするarticle情報を取得する
    Article.where('likes_count <= 5').each do |article|
      # Botがコメントする
      comment = article.comments.build(
        bot_id:     bot.id,
        bot_name:   bot.bot_name,
        img:        bot.bot_img,
        content:    bot.bot_content,
        article_id: article.id,
        user_id:    article.user_id
      )
      comment.save
      bot = Bot.find_bot
    end
    puts 'Bot finish running!'
  end

  every(2.hours, 'Bot')
end
