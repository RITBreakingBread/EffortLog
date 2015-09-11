class EffortLogsController < ApplicationController
  
  def create

    #build a hash of params for effort_log creation
    log_params = {}
    
    log_params[:name] = params[:username]
    log_params[:real_name] = params[:real_name]
    log_params[:url] = params[:url]

    num_hours = params[:hours].to_f

    #given number of hours worked, end time is now and start time is end time - hours worked
    end_time = DateTime.now()
    log_params[:end_time] = end_time
    log_params[:start_time] = end_time - num_hours.hours
    log_params[:hours] = num_hours

    log_params[:comment] = params[:comment]

    #only return a 200 status if the record was saved
    if @log = EffortLog.new(log_params).save!
      render nothing: true, status: 200
    else
      render nothing: true, status: 500
    end
  end


  def week_report
    binding.pry
  end

  def index
    #get params

    #if params = "all"
    @logs = EffortLog.paginate(:page => params[:page]).order(start_time: :desc)
  end


end
