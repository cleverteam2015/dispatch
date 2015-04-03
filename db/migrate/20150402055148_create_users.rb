class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :username
      t.string :business_unit
      t.string :role
      t.string :password_digest
      t.string :status
      t.string :updated_by
      t.string :created_by

      t.timestamps null: false
    end
  end
end
