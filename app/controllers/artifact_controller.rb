class ArtifactController < ApplicationController

  before_action :setIFrameURL, only: [:index, :show]

  def show
    #get the artifact name from the request
    @artifact_name = params[:id]
    render 'artifact/embedded_resources'
  end

  def index
    #set artifact name to first key in @artifact_json hash
    @artifact_name = @artifact_json.keys[0]
    render 'artifact/embedded_resources'
  end

  #parses the artifact json and sends artifact_json mapping to view
  def setIFrameURL
    #parse json and get src attribute for provided artifact_name
    @artifact_json = JSON.parse(File.read(File.join(Rails.root,'app','assets','artifacts','artifact.json')))
  end
end