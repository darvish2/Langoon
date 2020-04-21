class AddLanguagenameRefToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :languagename, foreign_key: true
  end
end
