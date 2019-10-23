class Content < ApplicationRecord
  belongs_to :user
  has_many :content_in_lists
  has_many :tags_in_contents
  has_many :lists, through: :content_in_lists, dependent: :nullify
  has_many :emotion_tags, through: :tags_in_contents, dependent: :nullify

end
