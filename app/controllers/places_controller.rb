class PlacesController < ApplicationController

  def index
  
    @places = Place.all
  
    end

    def show
      # find a Company
      #@places = Place.find_by({"id" => 1})
      @places = Place.find_by({"id" => params["id"]})
      # render companies/show view with details about Company
    end
  
    def new
  
    end
  
    def create
      # start with a new Company
      @place = Place.new
      # assign user-entered form data to Company's columns
      @place["name"] = params["name"]
      # save Company row
      @place.save
      # redirect user
      redirect_to "/places"
    end

end
