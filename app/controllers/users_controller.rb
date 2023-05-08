class UsersController < ApplicationController
    def show
        @user = User.includes(:items).find(params[:id])
        render json: @user.as_json(include: { items: { only: [:id, :name, :description, :price] } })
      end
end
