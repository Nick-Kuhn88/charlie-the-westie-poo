class CharlieController < ApplicationController

  def index
    @compliments = Compliment.all
  end

  def show
    @compliment = Compliment.find_by_id(params[:id])
  end
end
