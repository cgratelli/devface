class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.integer :user_id
      t.datetime :start_date
      t.datetime :end_date
      t.integer :band_id
      t.integer :local_id

      t.timestamps
    end
  end
end
