class AddLanguageGenreToLanguages < ActiveRecord::Migration[6.0]
  def change
    add_column :languages, :language_genre, :string
  end
end
