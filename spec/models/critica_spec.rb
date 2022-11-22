require 'rails_helper'

RSpec.describe Critica, type: :model do
  context 'Validate attributes before create' do
    it 'Create critica with valid attributes' do
      filme = Filme.new(id: 22, titulo: 'Carros', ano_lancamento: '2011')
      critica = Critica.new(comentario: 'lorem lorem')
      critica.Filme = filme
      expect(critica).to be_valid
    end
  end
end
