class Content < ApplicationRecord
  belongs_to :user
  has_many :lists, through: :content_in_lists, dependent: :nullify
end
