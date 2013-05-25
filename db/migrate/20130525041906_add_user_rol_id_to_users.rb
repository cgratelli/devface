class AddUserRolIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_rol_id, :integer
  end
end
