class PortfolioController < ApplicationController
  def index
    if params[:tag]
      @portfolios = Portfolio.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page =>10)
    else
      @portfolios = Portfolio.all.paginate(:page => params[:page], :per_page =>10)
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :text, :all_tags)
  end

end
