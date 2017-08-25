class GeeksController < ApplicationController
  before_action :set_geek, only: [:show, :edit, :update, :destroy]

  # GET /geeks
  # GET /geeks.json
  def index
    @geeks = Geek.all
  end

  # GET /geeks/1
  # GET /geeks/1.json
  def show
  end

  # GET /geeks/new
  def new
    @geek = Geek.new
  end

  # GET /geeks/1/edit
  def edit
  end

  # POST /geeks
  # POST /geeks.json
  def create
    @geek = Geek.new(geek_params)

    respond_to do |format|
      if @geek.save
        format.html { redirect_to @geek, notice: 'Geek was successfully created.' }
        format.json { render :show, status: :created, location: @geek }
      else
        format.html { render :new }
        format.json { render json: @geek.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geeks/1
  # PATCH/PUT /geeks/1.json
  def update
    respond_to do |format|
      if @geek.update(geek_params)
        format.html { redirect_to @geek, notice: 'Geek was successfully updated.' }
        format.json { render :show, status: :ok, location: @geek }
      else
        format.html { render :edit }
        format.json { render json: @geek.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geeks/1
  # DELETE /geeks/1.json
  def destroy
    @geek.destroy
    respond_to do |format|
      format.html { redirect_to geeks_url, notice: 'Geek was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geek
      @geek = Geek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def geek_params
      params.require(:geek).permit(:name, :hobby)
    end
end
