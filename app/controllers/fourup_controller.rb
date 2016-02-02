require 'json'

class FourupController < ApplicationController
  
  #will show the 4ups for all weeks, in descending order
  def index
    @four_ups=read_fourup_json
    render 'fourup/fourup_display'
  end

  #will show the 4up for only a specific week
  def show
    four_ups = read_fourup_json

    #the index into the map returned by 'read_fourup_json' that will
    #return the 4up info for only that week
    week_number = params[:id].to_i
    week_index = four_ups.size - week_number

    @four_ups = [].push(four_ups[week_index])

    render 'fourup/fourup_display'
  end

  private 
  #method to parse 4up JSON document and create map to be rendered
  def read_fourup_json
    JSON.parse(File.read(File.join(Rails.root,'app','assets','4ups','4up2.json')))
  end
end
