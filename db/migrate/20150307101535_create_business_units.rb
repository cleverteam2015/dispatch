class CreateBusinessUnits < ActiveRecord::Migration
  def change
    create_table :business_units do |t|
      t.string :short_name
      t.string :long_name
      t.date :creation_date
      t.string :status
      t.string :address
      t.string :phone
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
