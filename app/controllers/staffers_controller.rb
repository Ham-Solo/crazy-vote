class StaffersController < ApplicationController

  def index
    @staffers = Staffer.all
  end

  def new
    @staffer = Staffer.new
  end

  def show
  end

  def edit
  end

  def create
    @staffer = Staffer.new(staffer_params)
    if @staffer.save
      redirect_to root_path, notice: 'Staffer was successfully created.'
    else
      render :new
    end
  end

  def update
    if @staffer.update(staffer_params)
      redirect_to root_path, notice: 'Staffer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @staffer.destroy
      redirect_to staffer_url, notice: 'Staffer was successfully destroyed.'
  end

  private
    def set_staffer
      @staffer = Staffer.find(params[:id])
    end

    def staffer_params
      params.require(:staffer).permit(:name, :email, :password)
    end
end
