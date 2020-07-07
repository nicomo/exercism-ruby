# Given a year, report if it is a leap year.

module Year
  def self.leap?(year)
    year%4 == 0 && (year%100 != 0 || year%400 == 0)
  end
end