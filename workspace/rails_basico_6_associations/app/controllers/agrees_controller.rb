class AgreesController < ApplicationController
  def create
    @opinion = Opinion.find(params[:opinion_id])
    @opinion.agrees << Agree.new
    redirect_to root_path
  end
end
