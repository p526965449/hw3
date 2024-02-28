class EntriesController < ApplicationController

  def show
    @entry = Entry.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => @entry["company_id"]})

  end

  def new
  
  end

  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry.save
    redirect_to "/places/#{@entry["place_id"]}"
  end
end
