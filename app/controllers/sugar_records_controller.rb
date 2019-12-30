class SugarRecordsController < ApplicationController

    def create
        new_record = SugarRecord.create(value: params['value'], user_id: params['user_id'], date: DateTime.now())
        new_record.comment = Comment.create(text: params['comment'], sugar_record_id: new_record.id, date: DateTime.now())
        render json: new_record
    end

    def view
        test_rec = SugarRecord.first();
        render json: test_rec
    end

    def update
        target_record = SugarRecord.find(params["id"])
        target_record.update(value: params["value"])
        render json: target_record
    end

end
