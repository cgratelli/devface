class CreateUserRols < ActiveRecord::Migration
  def change
    create_table :user_rols do |t|
      t.string :name

      t.timestamps
    end
  end
end
