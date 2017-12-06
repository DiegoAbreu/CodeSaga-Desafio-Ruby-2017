class ChallengesController < ApplicationController
  def create
    @challenge = Challenge.new(challenge_params)
    if @challenge.save
      redirect_to @challenge
    else
      render :new
    end
  end

  def new
    @challenge = Challenge.new
  end

  def show
    @challenge = Challenge.find(params[:id])
  end

  private

  def challenge_params
    params.require(:challenge).permit(:name, :description, :code_points)
  end
end
