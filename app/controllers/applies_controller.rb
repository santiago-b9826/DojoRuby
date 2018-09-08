class AppliesController < ApplicationController
    def index
        @applies = Apply.all
    end
    def show 
        @applies = Apply.find(params[:id])
    end
    def new 
        @applies = Apply.new
    end
    def create
        @applies = Apply.new(title: params[:apply][:title],
                            body: params[:apply][:body],
                            name: params[:apply][:name],
                            edad: params[:apply][:edad]
                            )
        @applies.save
        redirect_to @applies
    end
end