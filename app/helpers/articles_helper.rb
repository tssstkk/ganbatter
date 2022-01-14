module ArticlesHelper
  def user_name(article)
    User.find_by(id: article.user_id).name
  end

  def user_nickname(article)
    User.find_by(id: article.user_id).profile&.nickname
  end

  def nickname_or_name(article)
    user_nickname(article) || user_name(article)
  end

  def bot_name(article)
    bot = Bot.find_by(id: article.bot_id)
    bot&.bot_name
  end
end
