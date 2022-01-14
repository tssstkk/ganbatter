module CommentsHelper
  
  def bot_or_user_name(comment)
    bot_name(comment) || nickname_or_name(comment)
  end

  def login_and_commented_user?(comment)
    user_signed_in? && (current_user.id == comment.user_id) && comment.bot_id.zero?
  end
end
