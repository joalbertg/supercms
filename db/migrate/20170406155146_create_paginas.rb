class CreatePaginas < ActiveRecord::Migration
  def change
    create_table :paginas do |t|
      t.references :seccion, index: true, foreign_key: true
      t.string :nombre
      t.string :slug
      t.text :texto
      t.boolean :active

      t.timestamps null: false
    end
  end
end
