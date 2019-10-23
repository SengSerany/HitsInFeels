module EmotionTagsHelper

    def set_emotion_tag
        @emotion_tag = EmotionTag.find(params[:id])
    end

    private

    def permit_emotion_tag
        params.require(:emotion_tag).permit(:name)
    end
end
