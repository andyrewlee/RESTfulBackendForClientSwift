class DreamsController < ApplicationController
  def index
    @dreams = Dream.all
    render json: @dreams
  end

  def create
    Dream.create(story: params[:story])
  end
end
