class CreateLanguagegenres < ActiveRecord::Migration[6.0]
  def change
    create_table :languagegenres do |t|
      t.integer :language_genre

      t.timestamps
    end
  end
end
