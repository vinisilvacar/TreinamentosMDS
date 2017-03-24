class CreateRestaurantes < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurantes do |t|
      t.string :nome,limit:80
      t.string :endereco
      t.timestamps
    end
  end
end
