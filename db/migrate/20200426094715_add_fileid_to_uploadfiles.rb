class AddFileidToUploadfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :uploadfiles, :fileid, :string
  end
end
