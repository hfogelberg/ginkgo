class WelcomesController < ApplicationController
	layout 'welcome_layout'
  before_action :set_welcome, only: [:show, :edit, :update, :destroy]

  # GET /welcomes
  # GET /welcomes.json
  def index
    @paintings = Artwork.order("RANDOM()").limit(3)
    @galleries = Gallery.all
  end
end