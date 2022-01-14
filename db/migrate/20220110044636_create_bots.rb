class CreateBots < ActiveRecord::Migration[6.1]
  def change
    create_table :bots do |t|
      t.string :bot_img
      t.string :bot_content

      t.timestamps
    end
  end
end
