class TalksController < ApplicationController
  def show
    @talk = Talk.find(params[:id])
    @user = @talk.user
    @about = @user.about
  end
end
