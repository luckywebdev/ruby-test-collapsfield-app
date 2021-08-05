class PokemenController < ApplicationController
  before_action :set_pokeman, only: [:show, :edit, :update, :destroy]

  # GET /pokemen
  # GET /pokemen.json
  def index
    @pokemen = Pokeman.all
  end

  # GET /pokemen/1
  # GET /pokemen/1.json
  def show
  end

  # GET /pokemen/new
  def new
    @pokeman = Pokeman.new
  end

  # GET /pokemen/1/edit
  def edit
  end

  # POST /pokemen
  # POST /pokemen.json
  def create
    @pokeman = Pokeman.new(pokeman_params)

    respond_to do |format|
      if @pokeman.save
        format.html { redirect_to @pokeman, notice: 'Pokeman was successfully created.' }
        format.json { render :show, status: :created, location: @pokeman }
      else
        format.html { render :new }
        format.json { render json: @pokeman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokemen/1
  # PATCH/PUT /pokemen/1.json
  def update
    respond_to do |format|
      if @pokeman.update(pokeman_params)
        format.html { redirect_to @pokeman, notice: 'Pokeman was successfully updated.' }
        format.json { render :show, status: :ok, location: @pokeman }
      else
        format.html { render :edit }
        format.json { render json: @pokeman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemen/1
  # DELETE /pokemen/1.json
  def destroy
    @pokeman.destroy
    respond_to do |format|
      format.html { redirect_to pokemen_url, notice: 'Pokeman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokeman
      @pokeman = Pokeman.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pokeman_params
      params.require(:pokeman).permit(:name, :element, :age)
    end
end
