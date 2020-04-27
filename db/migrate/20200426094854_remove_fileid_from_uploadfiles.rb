class RemoveFileidFromUploadfiles < ActiveRecord::Migration[6.0]
  def change

    remove_column :uploadfiles, :fileid, :string
  end
end
