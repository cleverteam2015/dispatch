class CreateMainEntities < ActiveRecord::Migration
  def change
    create_table :main_entities do |t|
      t.string :name
      t.string :main_name
      t.date :creation_date
      t.string :status
      t.string :address

      t.timestamps null: false
    end
  end
end
