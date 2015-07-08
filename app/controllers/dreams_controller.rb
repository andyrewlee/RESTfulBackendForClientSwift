class DreamsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @dreams = Dream.all
    render json: @dreams
  end

  def create
    Dream.create(story: params[:story])
  end

  def destroy
    Dream.find(params[:id]).destroy
  end

  def update
    dream = Dream.find(params[:id])
    dream.story = params[:story]
    dream.save
  end
end
