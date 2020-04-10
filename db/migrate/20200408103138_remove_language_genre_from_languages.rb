class RemoveLanguageGenreFromLanguages < ActiveRecord::Migration[6.0]
  def change

    remove_column :languages, :language_genre, :string
  end
end
