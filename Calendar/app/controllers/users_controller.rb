class UsersController < ApplicationController
    before_filter :authenticate_user!


   def index
    @user = current_user
  end

  def edit
     @user = current_user
  end
  def update_password
    @user = User.find(current_user.id)
    if @user.update_with_password(user_params)
      # Sign in the user by passing validation in case their password changed
      sign_in @user, :bypass => true
      redirect_to root_path
    else
      render "edit"
    end
  end


  def show
  end

  def update
    respond_to do |format|
      if @user.update(meeting_params)
        format.html { redirect_to @user, notice: 'User\'s information was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end
  private

  def user_params
    # NOTE: Using `strong_parameters` gem
    params.require(:user).permit(:password, :password_confirmation)
  end
end
