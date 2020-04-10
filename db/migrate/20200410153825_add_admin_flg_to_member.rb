class AddAdminFlgToMember < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :admin_flg, :boolean
  end
end
