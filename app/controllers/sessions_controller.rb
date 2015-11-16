class SessionsController < ApplicationController

  def new_eatup_user
    if current_eatup_user.nil?
    else
      @eatup_user = current_eatup_user
      redirect_to eatup_user_path(@eatup_user)
    end
  end

  def login_eatup_user
    @eatup_user = EatupUser.find_by(email: params[:email]).try(:authenticate, params[:password])
    if @eatup_user
      session[:eatup_user_id] = @eatup_user.id
      redirect_to events_path
    else
      render action: 'new_eatup_user'
    end
  end


  def destroy
    if current_eatup_user
      session[:eatup_user_id] = nil
    end
    redirect_to root_path
  end

end

