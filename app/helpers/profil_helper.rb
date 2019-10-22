module ProfilHelper

    def set_profil
        @user = User.find(params[:id])
    end
end
