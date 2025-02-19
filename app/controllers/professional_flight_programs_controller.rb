class ProfessionalFlightProgramsController < ApplicationController
  def new
    @professional_flight_program = ProfessionalFlightProgram.new
  end

  def create
    @professional_flight_program = ProfessionalFlightProgram.new(professional_flight_program_params)

    if @professional_flight_program.save
      redirect_to contact_confirmation_path, notice: @professional_flight_program.message
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def professional_flight_program_params
    params.require(:professional_flight_program).permit(:name, :start_date, :target_date, :email, :phone, :message)
  end
end
