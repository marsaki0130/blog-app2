class TimelinesController < ApplicationController
    before_action :authenticate_user!

    def show
        user_ids = current_user.followings.pluck(:id) #pluck idで user id を取ってくる
        @articles = Article.where(user_id: user_ids)
    end
end