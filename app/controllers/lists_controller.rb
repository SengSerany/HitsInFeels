class ListsController < ApplicationController
  include ListsHelper
  before_action :set_list, only: [:show, :update, :destroy]


  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(permit_list)
    @list.user_id = current_user.id
    if @list.save
      redirect_to current_user.profil
    else
      render new_list_path
    end
  end

  def update
  end

  def destroy
  end
end
