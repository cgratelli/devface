class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :name
      t.string :address
      t.string :distrit
      t.string :address_google_maps
      t.string :first_phone

      t.timestamps
    end
  end
end
