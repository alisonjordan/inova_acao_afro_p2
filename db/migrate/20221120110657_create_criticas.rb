class CreateCriticas < ActiveRecord::Migration[7.0]
  def change
    create_table :criticas do |t|
      t.text :comentario
      t.boolean :esta_aprovado
      t.references :Filme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
