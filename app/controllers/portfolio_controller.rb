class PortfolioController < ApplicationController
  def index
    if params[:tag]
      @portfolios = Portfolio.tagged_with(params[:tag])
    else
      @portfolios = Portfolio.all
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :text, :all_tags)
  end

end
