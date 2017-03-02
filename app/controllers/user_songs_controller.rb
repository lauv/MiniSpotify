class UserSongsController < ApplicationController
	def index
		@user_songs = UserSong.all.where(user_id: current_user.id)
	end
end
