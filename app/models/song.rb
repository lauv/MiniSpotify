class Song < ApplicationRecord
  belongs_to :genre
  has_many :user_songs
end
