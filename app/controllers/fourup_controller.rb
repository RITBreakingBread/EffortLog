require 'json'

class FourupController < ApplicationController
  def index
    @four_ups=JSON.parse(File.read(File.join(Rails.root,'app','assets','4ups','4up.json')))
  end
end
