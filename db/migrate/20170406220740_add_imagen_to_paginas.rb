class AddImagenToPaginas < ActiveRecord::Migration
  def change
    add_column :paginas, :imagen, :string
  end
end
