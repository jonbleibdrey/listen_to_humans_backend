class SessionsController < ApplicationController
    # POST /users
    def create
      user = User.where(email: params[:email]).first
  
      if user&.valid_password?(params[:password])
        render json: user.as_json(only: [:email]), status: :created
      else
        head(:unauthorized)
      end
    end
  
    # DELETE /users/1
    def destroy
      @user.destroy
    end
  
    # private
    #   # Use callbacks to share common setup or constraints between actions.
    #   def set_user
    #     @user = User.find(params[:id])
    #   end
  
    #   # Only allow a trusted parameter "white list" through.
    #   def user_params
    #     params.require(:user).permit(:name, :email, :password)
    #   end
  end
  