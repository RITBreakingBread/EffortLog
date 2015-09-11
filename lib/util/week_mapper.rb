class Util::WeekMapper

  #a map of the week number to a range of dates surrounding that week
  @@mapper = {
    1 => ["2015/08/25 15:00", "2015/08/31 23:59"], 
    2 => ["2015/09/01 15:00", "2015/09/07 23:59"],
    3 => ["2015/09/08 00:00", "2015/09/14 23:59"],
    4 => ["2015/09/15 00:00", "2015/09/21 23:59"]
  }

  #given the week number, return the start and end date of that week
  def self.week_range(week_number)
    @@mapper[week_number]
  end
end