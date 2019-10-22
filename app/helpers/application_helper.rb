module ApplicationHelper

    def set_my_own_list
        if List.find_by(user: current_user, title: "Mes contenues ajoutés") == nil
            @list = List.create(title: "Mes contenues ajoutés", user: current_user)
        end
    end
end
