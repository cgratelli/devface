class CreateAssistances < ActiveRecord::Migration
  def change
    create_table :assistances do |t|
      t.integer :user_id
      t.integer :concert_id

      t.timestamps
    end
  end
end
