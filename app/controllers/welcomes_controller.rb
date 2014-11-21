class WelcomesController < ApplicationController
	layout 'welcome_layout'
  before_action :set_welcome, only: [:show, :edit, :update, :destroy]
	
  # GET /welcomes
  # GET /welcomes.json
  def index
    @artworks = Artwork.where(:for_sale=>true, :show=>true).order("RANDOM()").limit(5)
  end
end