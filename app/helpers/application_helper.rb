module ApplicationHelper

    def set_my_own_list
        if List.find_by(user: current_user, title: "Mes contenues ajoutés") == nil
            @list = List.create(title: "Mes contenues ajoutés", user: current_user)
        end
    end

    def set_profil_to_user
        if Profil.find_by(user: current_user) == nil
            Profil.create(user:current_user)
        end
    end



end
