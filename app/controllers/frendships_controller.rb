class FrendshipsController < ApplicationController
  before_action :set_frendship, only: [:show, :edit, :update, :destroy]

  # GET /frendships
  # GET /frendships.json
  def index
    @frendships = Frendship.all
  end

  # GET /frendships/1
  # GET /frendships/1.json
  def show
  end

  # GET /frendships/new
  def new
    @frendship = Frendship.new
  end

  # GET /frendships/1/edit
  def edit
  end

  # POST /frendships
  # POST /frendships.json
  def create
    @frendship = Frendship.new(frendship_params)

    respond_to do |format|
      if @frendship.save
        format.html { redirect_to @frendship, notice: 'Frendship was successfully created.' }
        format.json { render :show, status: :created, location: @frendship }
      else
        format.html { render :new }
        format.json { render json: @frendship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frendships/1
  # PATCH/PUT /frendships/1.json
  def update
    respond_to do |format|
      if @frendship.update(frendship_params)
        format.html { redirect_to @frendship, notice: 'Frendship was successfully updated.' }
        format.json { render :show, status: :ok, location: @frendship }
      else
        format.html { render :edit }
        format.json { render json: @frendship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frendships/1
  # DELETE /frendships/1.json
  def destroy
    @frendship.destroy
    respond_to do |format|
      format.html { redirect_to frendships_url, notice: 'Frendship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frendship
      @frendship = Frendship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frendship_params
      params.require(:frendship).permit(:user_id, :friend_id, :created_at, :updated_at)
    end
end
