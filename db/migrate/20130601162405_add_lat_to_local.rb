class AddLatToLocal < ActiveRecord::Migration
  def change
    add_column :locals, :lat, :string
    add_column :locals, :lang, :string
  end
end
