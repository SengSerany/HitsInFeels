class ApplicationController < ActionController::Base
    include ApplicationHelper

    after_action :set_my_own_list, only: [:create]
    after_action :set_profil_to_user, only: [:create]
end
