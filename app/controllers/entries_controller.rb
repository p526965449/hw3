class EntriesController < ApplicationController

  def show
    @entry = Entry.find_by({"id" => params["id"]})
    #@company = Company.find_by({"id" => @contact["company_id"]})
    # render contacts/show view with details about Contact
  end
  # def create
     
  #   @place = Place.new
  #   @place["name"] = params["name"]
  #   @place.save
  #   redirect_to "/places"
  # end
  def create
    @entry = Entry.new

    # assign user-entered form data to Contact's columns
    @entry["title"] = params["title"]
    @entry.save
    redirect_to "/places"
  end
end
