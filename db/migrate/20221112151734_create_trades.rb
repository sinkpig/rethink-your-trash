class CreateTrades < ActiveRecord::Migration[7.0]
  def change
    create_table :trades do |t|
      t.date :created_date
      t.date :delivery_date
      t.string :delivery_method
      t.integer :material_quantity
      t.references :user, null: false, foreign_key: true
      t.references :material, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
