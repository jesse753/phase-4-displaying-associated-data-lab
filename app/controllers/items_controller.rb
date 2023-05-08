class ItemsController < ApplicationController
    def index
        items = Item.all.includes(:user)
        render json: items.as_json(include: :user)
      end
end
