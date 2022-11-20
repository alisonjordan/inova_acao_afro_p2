class AtorsController < ApplicationController
  before_action :set_ator, only: %i[ show edit update destroy ]
  before_action :set_filme, only: %i[ show edit update destroy ]

  # GET /ators or /ators.json
  def index
    @ators = Ator.all
  end

  # GET /ators/1 or /ators/1.json
  def show
  end

  # GET /ators/new
  def new
    @ator = Ator.new
  end

  # GET /ators/1/edit
  def edit
  end

  # POST /ators or /ators.json
  def create
    @ator = Ator.new(ator_params)

    respond_to do |format|
      if @ator.save
        format.html { redirect_to ator_url(@ator), notice: "Ator was successfully created." }
        format.json { render :show, status: :created, location: @ator }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ators/1 or /ators/1.json
  def update
    respond_to do |format|
      if @ator.update(ator_params)
        format.html { redirect_to ator_url(@ator), notice: "Ator was successfully updated." }
        format.json { render :show, status: :ok, location: @ator }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ators/1 or /ators/1.json
  def destroy
    @ator.destroy

    respond_to do |format|
      format.html { redirect_to ators_url, notice: "Ator was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_filme
      @filme = Filme.find(params[:id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_ator
      @ator = Ator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ator_params
      params.require(:ator).permit(:nome, :ano_nascimento, :email)
    end
end
