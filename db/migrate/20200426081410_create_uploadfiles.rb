class CreateUploadfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :uploadfiles do |t|
      t.integer "post_id"
      t.timestamps
    end
  end
end
