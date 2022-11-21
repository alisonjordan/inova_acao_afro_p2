class Filme < ApplicationRecord
   belongs_to :ator
   validates :titulo, :ator, presence: true
   validates :ano_lancamento, presence: true, numericality: { greater_than: 0 }
   validates :titulo, uniqueness: true
end
  