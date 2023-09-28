class BannersController < ApplicationController
    def show
      @banner = Banner.find(params[:id])
      @questionaries = Questionarie.where(banner_id: params[:id])
      @answers = Answer.all
      @userresponse = UserResponse.new(user_id: current_user.id,banner_id: @banner.id)
    end
end
