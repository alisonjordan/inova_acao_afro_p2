class Ator < ApplicationRecord
    validates :ano_nascimento, presence: true, numericality: { greater_than: 0 }
    validates :nome, :email, presence: true
    validates :email, uniqueness: true
end
