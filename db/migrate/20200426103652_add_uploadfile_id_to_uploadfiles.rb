class AddUploadfileIdToUploadfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :uploadfiles, :uploadfile_id, :string
  end
end
