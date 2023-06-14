class AddColumnToLibro < ActiveRecord::Migration[7.0]
  def change
    add_column :libros, :paginas, :integer
  end
end
