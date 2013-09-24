class AlbumsController < ApplicationController
	
	def index
		@albums = Album.all
	end

	def show
		@album = Album.find(params[:id])
	end

	def new
		@album = Album.new
	end

	def create
		artist_id = Artist.find_by_name(params[:album][:artist_id]).id
		title = params[:album][:title]
		genre = params[:album][:genre]
		Album.create(title: title, genre: genre, artist_id: artist_id)
		redirect_to albums_path, method: 'get'
	end

	def edit
		@album = Album.find(params[:id])
	end

	def update
		album = Album.update(params[:id], params[:album])
		album.save
		redirect_to albums_path
	end

	def destroy
		album = Album.find(params[:id])
		album.destroy
		redirect_to albums_path
	end
end
