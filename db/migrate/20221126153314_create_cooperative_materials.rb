class CreateCooperativeMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :cooperative_materials do |t|
      t.references :material, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
