class SongsController < ApplicationController
	
	def index
		@songs = Song.all
		p @songs.first.album
	end

	def show
		@song = Song.find(params[:id])
	end

	def new
		@song = Song.new
	end

	def create
		album_id = Album.find_by_title(params[:song][:album_id]).id
		title = params[:song][:title]
		
		Song.create(title: title, album_id: album_id)
		redirect_to songs_path, method: 'get'
	end

	def edit
		@song = Song.find(params[:id])
	end

	def update
		song = Song.update(params[:id], params[:song])
		song.save
		redirect_to songs_path, method: 'get'
	end

	def destroy
		song = Song.find(params[:id])
		song.destroy
		redirect_to songs_path
	end

end
