class CreateSecciones < ActiveRecord::Migration
  def change
    create_table :secciones do |t|
      t.string :nombre
      t.boolean :active

      t.timestamps null: false
    end
    add_index :secciones, :active
  end
end
