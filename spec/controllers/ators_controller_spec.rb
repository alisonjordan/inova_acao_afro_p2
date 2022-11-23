require 'rails_helper'

RSpec.describe AtorsController, type: :controller do
  describe "GET index" do
    it "assigns @ators" do
      ator = Ator.create(
        id: 1,
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

    # it "renders create template" do
    #   a = Ator.create!(
    #     :nome => 'lorem 5',
    #     :email => 'lorem@l22orem.com',
    #     :ano_nascimento => '2000'
    #   )
    #   @ator = Ator.new(a)
    #   get :create
    #   expect(response).to redirect_to(ator_url(@ator))
    # end
  end
  describe "#create Ator" do
    before do
      post :create, params: params
    end
    context 'when params are correct' do
      let(:params) { { ator: {
          id: 5,
          nome: 'lorem 5',
          email: 'lorem@l22orem.com',
          ano_nascimento: '2000'
        }
      }
    }
    it 'is expected to create new user successfully' do
      expect(assigns[:ator]).to be_instance_of(Ator)
    end

    it 'is expected to redirect to ator path' do
      is_expected.to redirect_to ator_url(assigns[:ator])
    end

    it 'is expected to set flash message' do
      expect(flash[:notice]).to eq('Ator was successfully created.')
    end
    end
  end

  describe "#create Ator :unprocessable_entity" do
    before do
      post :create, params: params
    end
    context 'when params are not correct' do
    let(:params) {{ator: { nome: nil, email: '', ano_nascimento: '2000'}}}
    
    it 'is expected to set flash error message' do
      expect(response).to have_http_status(:unprocessable_entity)
    end
    end
  end

  describe "#put Ator correct" do
    before do
      post :create, params: params
    end
    context 'when params are not correct' do
      let(:params) {{ator: { nome: nil, email: '', ano_nascimento: '2000'}}}
      
      it 'is expected to set flash error message' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end