class EmotionTag < ApplicationRecord
    has_many :tags_in_contents
    has_many :contents, through: :tags_in_contents, dependent: :nullify
end
