class CategoriesController < ApplicationController
    def show
        @clients = Client.where(category_id: params["id"])
        @category = Category.find(params["id"])
    end
end
