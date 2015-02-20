class BillsController < ApplicationController

  def index
    @bills = Bill.all
  end

  def new
    @bill = Bill.new
  end

  def show
  end

  def edit
  end

  def create
    @bill = Bill.new(bill_params)
    if @bill.save
      redirect_to root_path, notice: 'Bill was successfully created.'
    else
      render :new
    end
  end

  def update
    if @bill.update(bill_params)
      redirect_to root_path, notice: 'Bill was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @bill.destroy
      redirect_to bills_url, notice: 'Bill was successfully destroyed.'
  end

  private
    def set_bill
      @bill = Bill.find(params[:id])
    end

    def bill_params
      params.require(:bill).permit(:name, :description, :staffer_id)
    end
end
