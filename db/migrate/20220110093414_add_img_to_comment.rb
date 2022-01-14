class AddImgToComment < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :img, :string
  end
end
