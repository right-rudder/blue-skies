class ProgramGuideDownloadsController < ApplicationController
  before_action :set_program_guide_download, only: %i[ show edit update destroy ]
  before_action :authenticate_admin!, except: [:create, :confirmation]
  invisible_captcha only: [:create], honeypot: :confirm_email

  def confirmation
    render 'confirm'
  end

  # GET /program_guide_downloads or /program_guide_downloads.json
  def index
    @program_guide_downloads = ProgramGuideDownload.all
  end

  # GET /program_guide_downloads/1 or /program_guide_downloads/1.json
  def show
  end

  # GET /program_guide_downloads/new
  def new
    @program_guide_download = ProgramGuideDownload.new
  end

  # GET /program_guide_downloads/1/edit
  def edit
  end

  # POST /program_guide_downloads or /program_guide_downloads.json
  def create
    @program_guide_download = ProgramGuideDownload.new(program_guide_download_params)

    respond_to do |format|
      if @program_guide_download.save
        #ProgramGuideDownloadsMailer.program_guide_downloads(@program_guide_download).deliver_later
        format.html { redirect_to program_guide_download_confirmation_path, notice: @program_guide_download.name }
        #format.json { render :show, status: :created, location: @program_guide_download }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @program_guide_download.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_guide_downloads/1 or /program_guide_downloads/1.json
  #def update
  #  respond_to do |format|
  #    if @program_guide_download.update(program_guide_download_params)
  #      
  #      format.html { redirect_to program_guide_download_url(@program_guide_download), notice: "Book download was successfully updated." }
  #      format.json { render :show, status: :ok, location: @program_guide_download }
  #    else
  #      format.html { render :edit, status: :unprocessable_entity }
  #      format.json { render json: @program_guide_download.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  # DELETE /program_guide_downloads/1 or /program_guide_downloads/1.json
  def destroy
    @program_guide_download.destroy

    respond_to do |format|
      format.html { redirect_to program_guide_downloads_url, notice: "Book download was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_guide_download
      @program_guide_download = ProgramGuideDownload.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def program_guide_download_params
      params.require(:program_guide_download).permit(:name, :email, :phone)
    end
end
