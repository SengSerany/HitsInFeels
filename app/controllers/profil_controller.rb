class ProfilController < ApplicationController
  include ProfilHelper
  before_action :set_profil, only: [:show, :edit, :update]

  def show
    set_age
  end

  def edit
  end

  def update
    @profil.update(permit_profil)
    redirect_to @profil
  end
end
