class UserResponseController < ApplicationController
    def new
        @userresponse = UserResponse.new
    end

    def create
        @userresponse = UserResponse.create!(user_id: current_user.id, banner_id: params[:banner_id])
    end 
end
