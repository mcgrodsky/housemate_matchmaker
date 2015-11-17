class ListingsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show, :new, :create, :edit, :update, :destroy]
  def index
    # authenticate_user!
    # if current_user
    #   @listings = current_user.listings
    # else
      @listings = Listing.all
    # @listing = Listing.find(params[:id])
    # end
  end

  def new
      @neighborhood = Neighborhood.find(params[:neighborhood_id])
      @listing = Listing.new
  end

  def create
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @listing = @neighborhood.listings.create!(listing_params.merge(user: current_user))
    redirect_to neighborhood_path(@neighborhood), notice: "Your listing was successfully created!!"
  end

  def show
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    # @listing = Listing.find(params[:id])
  end

  def edit
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    # @listing = Listing.find(params[:id])
  end

  def update
    # @listing = Listing.find(params[:id])
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @listing.update(listing_params.merge(user: current_user))
    redirect_to neighborhood_listing_path(@neighborhood, @listing)
  end

  def destroy
    # @listing = Listing.find(params[:id])
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @listing.destroy
    redirect_to neighborhood_path(@neighborhood), notice: "Your listing was successfully deleted!"
  end

  private
  def listing_params
    params.require(:listing).permit(:name, :age, :gender, :description, :photo_url)
  end

  def set_post
    @listing = Listing.find(params[:id])
  end


end
