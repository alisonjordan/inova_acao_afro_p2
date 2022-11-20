class CreateFilmes < ActiveRecord::Migration[7.0]
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.integer :ano_lancamento
      t.references :ator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
