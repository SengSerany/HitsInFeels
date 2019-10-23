module ListsHelper

    def set_list
        @list = List.find(params[:id])
    end

    private

    def permit_list
        params.require(:list).permit(:title, :user)
    end

end
