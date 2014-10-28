class OrderInfosController < ApplicationController
  before_action :set_order_info, only: [:show, :edit, :update, :destroy]
  
  # GET /order_infos
  # GET /order_infos.json
  def index
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_info
      @order_info = OrderInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_info_params
      params[:order_info]
    end
end
