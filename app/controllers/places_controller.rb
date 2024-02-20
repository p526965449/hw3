class PlacesController < ApplicationController

  def index
  
    @places = Place.all
  
    end

    def show
      # find a Company
      @places = Place.find_by({"id" => params["id"]})
     
      # render companies/show view with details about Company
    end
  
    def new
  
    end
  
    def create
      # start with a new Company
      @Place = Place.new
      # assign user-entered form data to Company's columns
      @Place["name"] = params["name"]
      # save Company row
      @Place.save
      # redirect user
      redirect_to "/Places"
    end

end
