class WeekReportsController < ApplicationController

  #grab the effort log records for the given week
  def show
    #the school week for which we would like to retrieve EffortLog records
    week_number = params[:id].to_i

    #the date range corresponding to the week number that was provided
    date_range = Util::WeekMapper.week_range(week_number)
    
    #the start and end dates for the week range
    range_start = date_range[0]
    range_end = date_range[1]

    #render template

    @logs = EffortLog.where(:start_time => range_start..range_end).paginate(:page => params[:page]).order(start_time: :desc)

    render 'effort_logs/index'
  end
end