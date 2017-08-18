class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space

  def self.compute_price(daterange, people, space_price)
    dates = daterange.split(" - ")
    duration = Date.strptime(dates[1], "%m/%d/%Y") - Date.strptime(dates[0], "%m/%d/%Y") + 1
    price = (space_price.fdiv(30)) * duration * people.to_i
  end

end
