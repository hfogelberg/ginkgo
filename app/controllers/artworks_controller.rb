class ArtworksController < ApplicationController
  before_action :set_artwork, only: [:show, :edit, :update, :destroy]

  # GET /artworks
  # GET /artworks.json
  def index    
    if params[:collectionId].blank?
      #@artworks = Artwork.all
      @artworks = Artwork.where(:for_sale=>true).order("RANDOM()").limit(16)
    else
      @comment = Collection.find(params[:collectionId]).comment
      @artworks = Artwork.where(:Collection_id => params[:collectionId])
    end
  end

  # GET /artworks/1
  # GET /artworks/1.json
  def show
    @next_artwork = get_next
    @previous_artwork = get_previous
    @fbLink = "http://helenafogelberg.se/artworks/{@artwork.id}"
  end

  def get_next
    id = params[:id]

    if params[:collectionId].blank?
      Artwork.where("id > ?", id).first
    else
      collectionId = params[:collectionId]
      Artwork.where(:Collection_id=>1).where("id>?", collectionId).first
    end
  end

  def get_previous
    id = params[:id]

    if params[:collectionId].blank?
      Artwork.where("id < ?", id).last
    else
      collectionId = params[:collectionId]
      Artwork.where(:Collection_id=>1).where("id<?", collectionId).last
    end
  end

  # GET /artworks/new
  def new
    @artwork = Artwork.new
  end

  # GET /artworks/1/edit
  def edit
  end

  # POST /artworks
  # POST /artworks.json
  def create
    @artwork = Artwork.new(artwork_params)

    respond_to do |format|
      if @artwork.save
        format.html { redirect_to @artwork, notice: 'Konstverket uppdaterat.' }
        format.json { render action: 'show', status: :created, location: @artwork }
      else
        format.html { render action: 'new' }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artworks/1
  # PATCH/PUT /artworks/1.json
  def update
    respond_to do |format|
      if @artwork.update(artwork_params)
        format.html { redirect_to @artwork, notice: 'Artwork was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artworks/1
  # DELETE /artworks/1.json
  def destroy
    @artwork.destroy
    respond_to do |format|
      format.html { redirect_to artworks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artwork
      @artwork = Artwork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artwork_params
      params.require(:artwork).permit(:name, :description, :height, :width, :Collection_id, :Technique_id, :Material_id, :price, :for_sale, :image)
    end
end
