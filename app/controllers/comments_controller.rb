class CommentsController < ApplicationController

    def update
        target_comment = Comment.find(params["id"])
        target_comment.update(text: params["text"])
        parent_record = SugarRecord.find(target_comment.sugar_record_id)
        render json: parent_record
    end
end
