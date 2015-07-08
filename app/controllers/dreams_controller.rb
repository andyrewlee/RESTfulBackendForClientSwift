class DreamsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @dreams = Dream.all
    render json: @dreams
  end

  def create
    Dream.create(story: params[:story])
  end
end
