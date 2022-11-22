require 'rails_helper'

RSpec.describe AtorsController, type: :controller do
    describe "GET index" do
      it "assigns @ators" do
        ator = Ator.create(
          nome: 'lorem lorem',
          email: 'lorem@lorem.com',
          ano_nascimento: '2000'
        )
        get :index
        expect(assigns(:ators)).to eq([ator])
      end
  
      it "renders the index template" do
        get :index
        expect(response).to render_template("index")
      end
    end
end