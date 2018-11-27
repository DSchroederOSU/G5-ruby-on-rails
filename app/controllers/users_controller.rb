class UsersController < ApplicationController

  def index
    puts params[:contact_id]
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    puts request
    puts request.remote_ip
    @user = User.new(user_params)
    if @user.save
      send_confirmation_email(@user)
      redirect_to registered_url
    else
      render 'new'
    end
  end


  def register
    puts "here"
  end


  def repairform
    @user = User.find(params[:id])
    puts @user.email
    respond_to do |format|
        format.html { render :template => "users/repair" }
    end
    puts params
  end

  private

  def user_params
    params.require(:user).permit(:email, :ip)
  end

  def repair_params
    params.require(:repair).permit(:firstname, :lastname, :phone, :year, :make, :model, :repair, :date, :time)
  end

  def send_confirmation_email(user)
    RepairMailer.success_mail(user).deliver_now
  end

end
