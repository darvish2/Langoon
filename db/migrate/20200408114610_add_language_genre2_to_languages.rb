class AddLanguageGenre2ToLanguages < ActiveRecord::Migration[6.0]
  def change
    add_column :languages, :language_genre, :integer
  end
end
