class VotersController < ApplicationController
  before_action :set_voter, only: [:show, :edit, :update, :destroy]

  def index
    @voters = Voter.all
  end

  def new
    @voter = Voter.new
  end

  def show
  end

  def edit
  end

  def create
    @voter = Voter.new(voter_params)
    if @voter.save
      redirect_to root_path, notice: 'Voter was successfully created.'
    else
      render :new
    end
  end

  def update
    if @voter.update(voter_params)
      redirect_to root_path, notice: 'Voter was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @voter.destroy
      redirect_to voter_url, notice: 'Voter was successfully destroyed.'
  end

  private
    def set_voter
      @voter = Voter.find(params[:id])
    end

    def voter_params
      params.require(:voter).permit(:name, :email, :password)
    end
end
