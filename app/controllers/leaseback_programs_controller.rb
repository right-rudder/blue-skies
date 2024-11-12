class LeasebackProgramsController < ApplicationController
  before_action :set_leaseback_program, only: %i[ show edit update destroy ]
  before_action :authenticate_admin!, except: [:create, :new, :index]

  # GET /leaseback_programs or /leaseback_programs.json
  def index
    @leaseback_program = LeasebackProgram.new
  end

  # GET /leaseback_programs/1 or /leaseback_programs/1.json
  def show
  end

  # GET /leaseback_programs/new
  def new
    @leaseback_program = LeasebackProgram.new
  end

  # GET /leaseback_programs/1/edit
  def edit
  end

  # POST /leaseback_programs or /leaseback_programs.json
  def create
    @leaseback_program = LeasebackProgram.new(leaseback_program_params)

    respond_to do |format|
      if @leaseback_program.save
        format.html { redirect_to contact_confirmation_path, notice: @leaseback_program.message }
      else
        format.html { render :index, status: :unprocessable_entity }
        format.json { render json: @leaseback_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leaseback_programs/1 or /leaseback_programs/1.json
  def update
    respond_to do |format|
      if @leaseback_program.update(leaseback_program_params)
        format.html { redirect_to leaseback_program_url(@leaseback_program), notice: "Leaseback program was successfully updated." }
        format.json { render :show, status: :ok, location: @leaseback_program }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @leaseback_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaseback_programs/1 or /leaseback_programs/1.json
  def destroy
    @leaseback_program.destroy

    respond_to do |format|
      format.html { redirect_to leaseback_programs_url, notice: "Leaseback program was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leaseback_program
      @leaseback_program = LeasebackProgram.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leaseback_program_params
      params.require(:leaseback_program).permit(:name, :email, :phone, :aircraft_manufacturer, :aircraft_model, :aircraft_year, :message)
    end
end
