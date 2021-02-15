class UsersController < ApplicationController

  def create
    user = User.new(user_params)

    if user.save
      session[:user_id] = user.id
      render json: UserSerializer.new(user), status: 200
    else
      resp = {
        :error => @user.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  private

    def user_params
      params.require(:user).permit(:username, :password)
    end

end
