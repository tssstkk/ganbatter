class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
    add_index :articles, [:user_id, :created_at]
  end
end
