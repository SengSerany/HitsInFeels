class TagsInContent < ApplicationRecord
  belongs_to :content
  belongs_to :emotion_tag
end
