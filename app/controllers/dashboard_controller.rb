class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:perfil, :edit_perfil, :update_perfil]

  layout 'dashboard'

  def show; end

  def perfil; end

  def edit_perfil; end

  def update_perfil
    if @user.update!(user_params)
      redirect_to perfil_path, flash: { success: 'Dados atualizados com sucesso!' }
    else
      render :edit_perfil
    end
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:name, :email, :age, :gender)
  end
end
