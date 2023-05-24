class InvoicesController < ApplicationController
  def index
    @invoices = Invoice.all
  end

  def show
    @invoice = Invoice.find_by_id(params[:id])
  end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new(params[:invoice])
    if @invoice.save
      redirect_to invoices_path
    else
      render :new
    end
  end

  def edit
    @invoice = Invoice.find_by_id(params[:id])
  end

  def update
    @invoice = Invoice.find_by_id(params[:id])
    if @invoice.update_attributes(params[:invoice])
      redirect_to invoices_path
    else
      render :edit
    end
  end

  def destroy
    @invoice = Invoice.find_by_id(params[:id])
    @invoice.destroy
    redirect_to invoices_path
  end
end
