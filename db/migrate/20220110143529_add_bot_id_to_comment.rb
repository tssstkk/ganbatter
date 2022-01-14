class AddBotIdToComment < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :bot_id, :integer, default: 0
  end
  # add_index :comments, :bot_id
end
