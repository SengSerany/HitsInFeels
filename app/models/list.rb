class List < ApplicationRecord
  belongs_to :user
  has_many :content_in_lists
  has_many :contents, through: :content_in_lists, dependent: :nullify
end
