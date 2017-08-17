class SpacesController < ApplicationController

  def index
    @spaces = Space.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@spaces) do |space, marker|
      marker.lat space.latitude
      marker.lng space.longitude
    end
  end

  def show
    @space = Space.find(params[:id])
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      redirect_to space_path(@space), notice: "your space have been created"
    else
      render :new
    end
  end

   def edit
    @space = Space.find(params[:id])
  end

  def update
    @space = Space.find(params[:id])
    @space.update(space_params)
    redirect_to spaces_path
  end

  def destroy
    @space = Space.find(params[:id])
    @space.destroy
    redirect_to spaces_path
  end

  def space_params
    params.require(:space).permit(:address, :name, :description, :capacity, :price, :photo, :photo_cache)
  end

end
