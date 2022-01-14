class AddBotIdToArticle < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :bot_id, :integer, default: 0
  end
  # add_index :articles, :bot_id
end
