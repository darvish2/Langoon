class AddComputerlanguageNameToLanguagenames < ActiveRecord::Migration[6.0]
  def change
    add_column :languagenames, :computerlanguage_name, :integer
  end
end
