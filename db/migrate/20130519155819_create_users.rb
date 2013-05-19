class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :maternal_name
      t.string :gender
      t.string :document_type
      t.string :document_number
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
