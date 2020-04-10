class AddDeletedAtToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :deleted_at, :datetime
    add_index :members, :deleted_at
  end
end
