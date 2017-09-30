class SongSinger < ApplicationRecord
	belongs_to :song, class_name: 'Song', foreign_key: 'song_id', primary_key: 'id'
	belongs_to :singer, class_name: 'Singer', foreign_key: 'singer_id', primary_key: 'id'
end
