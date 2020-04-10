class AddLearningGenre2ToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :learning_genre, :integer
  end
end
