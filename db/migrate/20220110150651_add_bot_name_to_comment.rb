class AddBotNameToComment < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :bot_name, :string
  end
end
