class Ator < ApplicationRecord

    validates :nome, :ano_nascimento, :email, presence: true
    validates :email, uniqueness: true
end
