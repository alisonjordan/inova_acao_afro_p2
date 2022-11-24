require 'rails_helper'

RSpec.describe FilmesController, type: :controller do
  let!(:ator) {Ator.create(id: 1, nome: 'lorem lorem', email: 'lorem@lorem.com', ano_nascimento: '2000')}
  let!(:Filme) {Filme.create(id: 1, titulo: 'Carros', ano_lancamento: '2011', ator_id: ator.id)}
  let!(:ator_id) { ator.id }
  # let!(:Filme_id) { Filme.id }

  describe "GET index" do
    it "assigns @ators" do
      filme = Filme.create(
        [{id: 1, titulo: 'Carros', ano_lancamento: '2011', ator_id: ator.id},
        {id: 2, titulo: 'Carros 2', ano_lancamento: '2015', ator_id: ator.id}]
      )
      get :index
      expect(assigns(:filmes)).to eq([filme].first)
    end

    it "renders the index template" do
      get :index
      is_expected.to render_template('index')
    end
  end

  describe "#new Filme" do
    context 'when params are correct and incorrect' do
      it 'is expected to new filme' do
        get :new
        expect(assigns[:filme]).to be_instance_of(Filme)
      end
    end
  end
end