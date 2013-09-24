class ArtistsController < ApplicationController

	def index
		@artists = Artist.all
	end

	def show
		@artist = Artist.find(params[:id])
	end

	def new
		@artist = Artist.new
	end

	def create
		Artist.create(params[:artist])
		redirect_to artists_path, method: 'get'
	end

	def edit
		@artist = Artist.find(params[:id])
	end

	def update
		artist = Artist.update(params[:id], params[:artist])
		artist.save
		redirect_to artists_path
	end

	def destroy
		artist = Artist.find(params[:id])
		artist.destroy
		redirect_to artists_path
	end

end
