class UserSongsController < ApplicationController
	def index
		@user_songs = UserSong.all.where(user_id: current_user.id)
		@user = current_user
		
	end

	def create
		@song = Song.find(params[:song_id])
		current_user.songss << @song
		redirect_to usersongs_path,
		notice:"#{@song.name} was added!"
	end
end
