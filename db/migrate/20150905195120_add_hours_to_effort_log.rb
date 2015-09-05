class AddHoursToEffortLog < ActiveRecord::Migration
  def change
    add_column :effort_logs, :hours, :decimal, :null => false, :default => 0

    #script executed during migration to calculate hours of existing records
    logs = EffortLog.all

    logs.each do |log|
      finish = log.end_time
      start = log.start_time

      hours = (finish - start) / 3600
      log.hours = hours
      log.save!
    end
  end
end
