class AddLanguagegenreRefToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :languagegenre, foreign_key: true
  end
end
