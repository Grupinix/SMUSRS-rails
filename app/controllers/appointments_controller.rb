class AppointmentsController < DashboardController
  before_action :authenticate_user!
  before_action :set_user, only: [:new, :create, :next_appointment]

  def index; end

  def new
    @appointment = @user.appointments.new
  end

  def create
    @appointment = @user.appointments.new(appointment_params)

    if @appointment.save
      redirect_to(dashboard_path)
    else
      render :new
    end
  end

  def next_appointment
    if @user.appointments.any?
      @appointment = @user.appointments.where("date > ?", Date.today).sort_by(&:date).first
    else
      redirect_to(appointments_path)
    end
  end

  private

  def set_user
    @user = current_user
  end

  def appointment_params
    params.require(:appointment).permit(:name, :title, :description, :address, :date)
  end
end
