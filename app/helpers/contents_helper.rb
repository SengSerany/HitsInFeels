module ContentsHelper
    
    def set_content
        @content = Content.find(params[:id])
    end

    def set_video
        @id_video = @content.link.partition('=').last
            if @id_video.count('=') >= 1
                @id_video.partition('=').first
            end
        return @id_video
    end

    def add_to_my_list
        ContentInList.create(content: @content, list_id: List.find_by(title: "Mes contenues ajoutés", user: current_user).id)
    end

    private

    def permit_content
        params.require(:content).permit(:title, :link, :origin, :description)
    end

end
