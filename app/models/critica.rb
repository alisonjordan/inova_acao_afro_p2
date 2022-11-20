class Critica < ApplicationRecord
  belongs_to :Filme

  validates :comentario, :Filme, presence: true

  default_scope { where(esta_aprovado: true ) }
end
