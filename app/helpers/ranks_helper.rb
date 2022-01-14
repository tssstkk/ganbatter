module RanksHelper
  def likes_count_top3
    likes_count_top3_query = "SELECT articles.user_id,
                                     users.name  AS user_name,
                                     articles.id AS article_id,
                                     articles.title,
                                     articles.likes_count
                              FROM users
                              JOIN articles
                              ON users.id = articles.user_id
                              ORDER BY likes_count DESC
                              LIMIT 3"
    User.find_by_sql(likes_count_top3_query)
  end
end
