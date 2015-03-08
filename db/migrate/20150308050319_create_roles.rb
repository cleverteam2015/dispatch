class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.string :status
      t.string :created_by
      t.string :updated_by
      t.string :description

      t.timestamps null: false
    end
  end
end
