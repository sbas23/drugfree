class ServicesController < ApplicationController

  def index
    @service = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(allowed_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to "/services/new" }
      else
        format.html { render :new }
      end
    end
  end

  private

  def allowed_params
    params.require(:service).permit(:service_name, :description, :cost)
  end
end
