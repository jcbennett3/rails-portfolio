class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
  def index
    @portfolios = Portfolio.all
  end
  def show
  end
  def new
    @portfolio = Portfolio.new
  end
  def edit
  end
  def create
    @portfolio = Portfolio.new(portfolio_params)
    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio Item was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio }
      else
        format.html { render :new }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
   respond_to do |format|
     if @portfolio.update(portfolio_params)
       format.html{ redirect_to portfolios_path, notice: 'Portfolio Item successfully updated.' }
     else
       format.html{ render :edit }
     end
   end
  end
  def destroy
  end

  private
  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image)
  end
  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
