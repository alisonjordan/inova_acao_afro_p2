require 'rails_helper'

RSpec.describe Filme, type: :model do
  before(:each) do
    @ator = Ator.new(
      id: 10,
      nome: 'lorem lorem',
      email: 'lorem@lorem.com',
      ano_nascimento: '2000'
    )
  end
  context 'Validate attributes before create' do
    it 'Create movie with valid attributes' do
      filme = Filme.new(titulo: 'Carros', ano_lancamento: '2011')
      filme.ator = @ator
      expect(filme).to be_valid
    end
  end
end
