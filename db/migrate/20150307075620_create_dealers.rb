class CreateDealers < ActiveRecord::Migration
  def change
    create_table :dealers do |t|
      t.string :name
      t.string :main_name
      t.date :creation_date
      t.string :status
      t.string :address
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
