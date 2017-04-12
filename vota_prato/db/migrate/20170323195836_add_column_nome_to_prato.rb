class AddColumnNomeToPrato < ActiveRecord::Migration[5.0]
  def change
    add_column :pratos, :nome, :string
  end
end
