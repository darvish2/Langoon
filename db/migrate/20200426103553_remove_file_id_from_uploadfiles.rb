class RemoveFileIdFromUploadfiles < ActiveRecord::Migration[6.0]
  def change

    remove_column :uploadfiles, :file_id, :string
  end
end
