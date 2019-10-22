class ApplicationController < ActionController::Base
    include ApplicationHelper

    after_action :set_my_own_list, only: [:create]
end
