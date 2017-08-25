class NerdsController < ApplicationController
  before_action :set_nerd, only: [:show, :edit, :update, :destroy]

  # GET /nerds
  # GET /nerds.json
  def index
    @nerds = Nerd.all
  end

  # GET /nerds/1
  # GET /nerds/1.json
  def show
  end

  # GET /nerds/new
  def new
    @nerd = Nerd.new
  end

  # GET /nerds/1/edit
  def edit
  end

  # POST /nerds
  # POST /nerds.json
  def create
    @nerd = Nerd.new(nerd_params)

    respond_to do |format|
      if @nerd.save
        format.html { redirect_to @nerd, notice: 'Nerd was successfully created.' }
        format.json { render :show, status: :created, location: @nerd }
      else
        format.html { render :new }
        format.json { render json: @nerd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nerds/1
  # PATCH/PUT /nerds/1.json
  def update
    respond_to do |format|
      if @nerd.update(nerd_params)
        format.html { redirect_to @nerd, notice: 'Nerd was successfully updated.' }
        format.json { render :show, status: :ok, location: @nerd }
      else
        format.html { render :edit }
        format.json { render json: @nerd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nerds/1
  # DELETE /nerds/1.json
  def destroy
    @nerd.destroy
    respond_to do |format|
      format.html { redirect_to nerds_url, notice: 'Nerd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nerd
      @nerd = Nerd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nerd_params
      params.require(:nerd).permit(:name, :hobby)
    end
end
