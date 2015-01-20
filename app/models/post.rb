class Post < ActiveRecord::Base
	acts_as_taggable # Alias for acts_as_taggable_on :tags
	acts_as_taggable_on :tag_list
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { minimum: 5 }
	validates :body, presence: true

	self.per_page = 10
end
	WillPaginate.per_page = 10