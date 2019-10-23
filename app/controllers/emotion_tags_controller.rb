class EmotionTagsController < ApplicationController
  include EmotionTagsHelper
  before_action :set_emotion_tag, only: [:show, :destroy]

  def index
    @emotion_tags = EmotionTag.all
  end

  def show
  end

  def new
    @emotion_tag = EmotionTag.new
  end

  def create
    @emotion_tag = EmotionTag.new(permit_emotion_tag)
    if @emotion_tag.save
      redirect_to current_user.profil
    end

  end

  def destroy
  end
end
