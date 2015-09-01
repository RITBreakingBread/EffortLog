class EffortLogsController < ApplicationController
  
  def create

    #get params from request
    #EffortLog.new (w/params)
    #attempt to save record
    #if successful, return successful response
    #if failed, return failed response 


    log_params[:name] = params[:name]
    log_params[:real_name] = params[:real_name]
    num_hours = params[:hours]

    end_time = params[:end_time]
    log_params[:end_time] = end_time
    log_params[:start_time] = end_time - new_hours.hours

    log_params[:comment] = params[:comment]

    @log = EffortLog.new(log_params).save!

  end


  def index 
    return "some shit"
  end

  def show
    return "some specific shit"
  end

end