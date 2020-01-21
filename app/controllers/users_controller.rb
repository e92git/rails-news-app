class UsersController < ApplicationController
  before_action :ensure_signed_out, only: [:new, :create]
  before_action :ensure_signed_in, only: [:show, :account]

  def new
    @user = User.new
  end

  def create
    @user = User.new(create_user_params)
    if @user.save
      sign_in(@user)
      flash[:notice] = 'Welcome to the NewsApp'
      redirect_to :root
    else 
      flash[:error] = @user.errors.full_messages.join(', ')
      redirect_to :new
    end
  end

  def account
    @user = current_user
    puts @user.has_user_rights?
    puts @user.admin_role?
    puts @user.user_role?
    #puts current_user.role.has_writer?
    #puts UserRole::ROLES.values
  end

  private

  def create_user_params
    params.require(:user).permit(:username, :password, :email, :last_name, :first_name)
  end
end