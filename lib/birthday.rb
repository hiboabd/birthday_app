require 'date'

class Calculate
  def birthday?(birthday)
    birthday == Date.today.strftime("%d/%m")
  end

  def days_left(birthday)
    birthday = Date.parse(birthday.to_s << "/2020")
    todays_date = Date.today
    if birthday < todays_date
      birthday = birthday + 365
    end
    difference = (birthday - todays_date).to_i
  end
end
