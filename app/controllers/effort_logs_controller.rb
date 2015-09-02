class EffortLogsController < ApplicationController
  
  def create

    #get params from request
    #EffortLog.new (w/params)
    #attempt to save record
    #if successful, return successful response
    #if failed, return failed response 

    log_params = {}
    
    log_params[:name] = params[:username]
    log_params[:real_name] = params[:real_name]
    num_hours = params[:hours].to_f

    end_time = DateTime.now()
    log_params[:end_time] = end_time
    log_params[:start_time] = end_time - num_hours.hours

    log_params[:comment] = params[:comment]

    if @log = EffortLog.new(log_params).save!
      render nothing: true, status: 200
    else
      render nothing: true, status: 500
    end


  end


  def index 
    return "some shit"
  end

  def show
    return "some specific shit"
  end

end