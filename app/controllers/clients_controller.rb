class ClientsController < ApplicationController
    def index
        @clients = Client.all
    end

    def new
        @categoryies = Category.all
    end

    def create
        Client.create(title: params["clients"]["title"],body: params["clients"]["body"],category_id: params["clients"]["category_id"])
        redirect_to "/"
    end

    def destroy
        client = Client.find(params["id"])
        client.destroy
        redirect_to "/"
    end

    def edit
        @client = Client.find(params["id"])
    end

    def update
        client = Client.find(params["id"])
        client.title = params["clients"]["title"]
        client.body = params["clients"]["body"]
        client.category_id = params["clients"]["category_id"]
        client.save
        redirect_to "/"
    end
end
