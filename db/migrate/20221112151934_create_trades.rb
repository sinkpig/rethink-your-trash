class CreateTrades < ActiveRecord::Migration[7.0]
  def change
    create_table :trades do |t|
      t.date :created_date
      t.date :delivery_date
      t.string :delivery_method
      t.integer :material_quantity
      t.integer :person_id
      t.string :person_type
      t.integer :cooperative_id
      t.string :cooperative_type
      t.references :material, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
