class BannersController < ApplicationController
    def show
      @banner = Banner.find(params[:id])
      @questionaries = Questionarie.where(banner_id: params[:id])
      @answers = Answer.all
    end
end
