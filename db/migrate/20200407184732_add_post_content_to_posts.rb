class AddPostContentToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :post_content, :string
  end
end
