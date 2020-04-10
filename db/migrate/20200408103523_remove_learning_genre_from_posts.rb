class RemoveLearningGenreFromPosts < ActiveRecord::Migration[6.0]
  def change

    remove_column :posts, :learning_genre, :string
  end
end
