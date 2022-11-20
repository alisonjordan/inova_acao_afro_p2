class Critica < ApplicationRecord
  belongs_to :Filme

  validates :comentario, :filme

  
end
