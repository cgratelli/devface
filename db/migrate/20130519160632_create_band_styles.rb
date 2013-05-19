class CreateBandStyles < ActiveRecord::Migration
  def change
    create_table :band_styles do |t|
      t.integer :band_id
      t.integer :name

      t.timestamps
    end
  end
end
