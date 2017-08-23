class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]
  layout "portfolio"
  access all: [:show, :index, :angular, :ruby_on_rails],
         user: {except: [:destroy, :new, :create, :update, :edit]},
         site_admin: :all

  def index
    @portfolio_items = Portfolio.by_position
  end

  def sort
    params[:order].each do |k, v|
      Portfolio.find(v[:id]).update(position: v[:position])
    end

    head :ok
  end

  def angular
    @angular_items = Portfolio.angular_items
  end

  def ruby_on_rails
    @ror_items = Portfolio.ruby_on_rails_items
  end

  def show
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_item_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: "Your portfolio item is now love!" }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_item_params)
        format.html { redirect_to portfolios_path, notice: "Your portfolio item was successfully updated! "}
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @portfolio_item.destroy

    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "Item was removed." }
    end
  end

  private
    def portfolio_item_params
      params.require(:portfolio).permit(
        :title,
        :subtitle,
        :body,
        technologies_attributes: [:name]
      )
    end

    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end
end
