class Critica < ApplicationRecord
  belongs_to :Filme

  validates :comentario, :Filme, presence: true
end
