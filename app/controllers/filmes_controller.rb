class FilmesController < ApplicationController
  before_action :set_filme, only: %i[ show edit update destroy ]
  before_action :set_ator, only: %i[new show edit create update ]

  # GET /filmes or /filmes.json
  def index
    @filmes = Filme.all
  end

  # GET /filmes/1 or /filmes/1.json
  def show
  end

  # GET /filmes/new
  def new
    @filme = Filme.new
    
  end

  # GET /filmes/1/edit
  def edit
  end

  # POST /filmes or /filmes.json
  def create
    @filme = Filme.new(filme_params)

    respond_to do |format|
      if @filme.save
        format.html { redirect_to filme_url(@filme), notice: "Filme Adicionado." }
        format.json { render :show, status: :created, location: @filme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @filme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filmes/1 or /filmes/1.json
  def update
    respond_to do |format|
      if @filme.update(filme_params)
        format.html { redirect_to filme_url(@filme), notice: "Filme Editado" }
        format.json { render :show, status: :ok, location: @filme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @filme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filmes/1 or /filmes/1.json
  def destroy
    @filme.destroy

    respond_to do |format|
      format.html { redirect_to filmes_url, notice: "Filme Excluído!" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ator
      @ator= Ator.all.pluck(:nome,:id)
    end 
    def set_filme
      @filme = Filme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def filme_params
      params.require(:filme).permit(:titulo, :ano_lancamento, :ator_id)
    end
end
