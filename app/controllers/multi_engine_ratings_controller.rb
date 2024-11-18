class MultiEngineRatingsController < ApplicationController
  before_action :set_multi_engine_rating, only: %i[ show edit update destroy ]
  before_action :authenticate_admin!, except: [:create, :new, :index]

  # GET /multi_engine_ratings or /multi_engine_ratings.json
  def index
    @multi_engine_ratings = MultiEngineRating.all
  end

  # GET /multi_engine_ratings/1 or /multi_engine_ratings/1.json
  def show
  end

  # GET /multi_engine_ratings/new
  def new
    @multi_engine_rating = MultiEngineRating.new
  end

  # GET /multi_engine_ratings/1/edit
  def edit
  end

  # POST /multi_engine_ratings or /multi_engine_ratings.json
  def create
    @multi_engine_rating = MultiEngineRating.new(multi_engine_rating_params)

    respond_to do |format|
      if @multi_engine_rating.save
        format.html { redirect_to contact_confirmation_path, notice: @multi_engine_rating.message }
        format.json { render :show, status: :created, location: @multi_engine_rating }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @multi_engine_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /multi_engine_ratings/1 or /multi_engine_ratings/1.json
  def update
    respond_to do |format|
      if @multi_engine_rating.update(multi_engine_rating_params)
        format.html { redirect_to multi_engine_rating_url(@multi_engine_rating), notice: "Multi engine rating was successfully updated." }
        format.json { render :show, status: :ok, location: @multi_engine_rating }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @multi_engine_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multi_engine_ratings/1 or /multi_engine_ratings/1.json
  def destroy
    @multi_engine_rating.destroy

    respond_to do |format|
      format.html { redirect_to multi_engine_ratings_url, notice: "Multi engine rating was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multi_engine_rating
      @multi_engine_rating = MultiEngineRating.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def multi_engine_rating_params
      params.require(:multi_engine_rating).permit(:name, :email, :phone, :message)
    end
end
