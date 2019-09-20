class ComplimentsController < ApplicationController

  def new
    @compliment = Compliment.new
  end

  def create
    @compliment = Compliment.create(compliment_params)
    if @compliment.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end 
  end

  def show
    @compliment = Compliment.find_by_id(params[:id])
  end

  private

  def compliment_params
    params.require(:compliment).permit(:message)
  end
end
