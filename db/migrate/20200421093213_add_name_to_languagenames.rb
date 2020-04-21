class AddNameToLanguagenames < ActiveRecord::Migration[6.0]
  def change
    add_column :languagenames, :name, :string
  end
end
