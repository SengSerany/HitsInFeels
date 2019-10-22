module ProfilHelper

    def set_profil
        @profil = Profil.find_by(user_id: params[:id])
    end

    def set_age
        if @profil.birthday != nil
            @profil_age = ((Time.zone.now - @profil.birthday.to_time) / 1.year.seconds).floor
            return @profil_age
        end
    end

    private

    def permit_profil
        params.require(:profil).permit(:first_name, :last_name, :gender, :birthday, :city)
    end
end
