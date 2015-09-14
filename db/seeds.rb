# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


case Rails.env
  # Call this by running `rake db:seed RAILS_ENV=development-sample`
  when "development-sample"
    EffortLog.create(name: 'test', real_name: 'potato skins', url: 'http://google.com',
                     end_time: DateTime.now, start_time: DateTime.now - 5.hours, hours: 5, comment: 'Put chese and baked potatos')
    EffortLog.create(name: 'another test', real_name: 'test account', url: 'http://trello.com',
    				 end_time: DateTime.now - 13.days, start_time: DateTime.now - 12.days, hours: 24, comment: 'this was alot of work')
  when "production"
    # Nothing yet, not used
  else
    # Else nothing
end
