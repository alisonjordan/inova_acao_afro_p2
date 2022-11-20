class Filme < ApplicationRecord
  belongs_to :ator
   validates :titulo, :ano_lancamento, :ator, presence: true
   validates :titulo, uniqueness: true
end
