class Review < ApplicationRecord
	#foreign_key thuoc bang user
	has_one :user, class_name: 'User', foreign_key: 'id', primary_key: 'user_id'
end
