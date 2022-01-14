class AddBotNameToBot < ActiveRecord::Migration[6.1]
  def change
    add_column :bots, :bot_name, :string
  end
end
