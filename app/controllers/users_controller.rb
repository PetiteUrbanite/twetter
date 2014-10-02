class UsersController < ApplicationController
  def index
  end

  def show
    if params[:username]
      @user = User.where(username: params[:username]).first
      @twets = @user.twets
      else
      @twets = Twet.all.order(updated_at: :desc)
    end
  end
  
#  private 
#      def user_params
#        params.require(:user).permit(:username)
#      end
end
