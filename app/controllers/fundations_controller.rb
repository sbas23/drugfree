class FundationsController < ApplicationController

  def index
    @fundation = Fundation.all
  end

  def new
    @fundation = Fundation.new
  end

  def create
    @fundation = Fundation.new(allowed_params)

    respond_to do |format|
      if @fundation.save
        format.html { redirect_to "/fundations/new" }
      else
        format.html { render :new }
      end
    end
  end

  private

  def allowed_params
    params.require(:fundation).permit(:fundation_name, :address, :phone, :mail)
  end
end
