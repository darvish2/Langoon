class AddLearningGenreToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :learning_genre, :string
  end
end
