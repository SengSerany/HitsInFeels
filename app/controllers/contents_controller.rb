class ContentsController < ApplicationController
  include ContentsHelper
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  def index
    @contents = Content.all
  end

  def show
    set_video
    @video = Yt::Video.new id: @id_video
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(permit_content)
    @content.user_id = current_user.id
    if @content.save
      add_to_my_list
      redirect_to new_emotion_tag_path
    else
      render new_content_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
