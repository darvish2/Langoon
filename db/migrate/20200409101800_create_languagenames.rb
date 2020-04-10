class CreateLanguagenames < ActiveRecord::Migration[6.0]
  def change
    create_table :languagenames do |t|
      t.integer :language_name

      t.timestamps
    end
  end
end
