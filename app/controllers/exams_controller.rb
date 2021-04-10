class ExamsController < DashboardController
  before_action :authenticate_user!
  before_action :set_user, only: [:new, :create, :next_exam]

  def index; end

  def new
    @exam = @user.exams.new
  end

  def create
    @exam = @user.exams.new(exam_params)

    if @exam.save
      redirect_to(dashboard_path)
    else
      render :new
    end
  end

  def next_exam
    if @user.exams.any?
      @exam = @user.exams.sort_by(&:date).first
    else
      redirect_to(exams_path)
    end
  end

  private

  def set_user
    @user = current_user
  end

  def exam_params
    params.require(:exam).permit(:name, :title, :description, :address, :date)
  end
end
