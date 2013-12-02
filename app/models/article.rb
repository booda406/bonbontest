class Article < ActiveRecord::Base
	acts_as_taggable_on :tags
	scope :by_join_date, order("created_at DESC")

	mount_uploader :photo, PhotoUploader

	belongs_to :category
end
