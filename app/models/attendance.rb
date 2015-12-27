class Attendance < ActiveRecord::Base
  belongs_to :member
  scope :arrivaled, -> { where(wk_day: Date.today.to_time ) }
  scope :departured, -> { where(departure: Date.today.to_time .. Date.today+1.day ) }


  def arrival?
    self.arrival.to_date == Date.today
  end

  def departure?
    self.departure.present?
  end

  def arrival_time
    self.arrival.try(:strftime,"%H:%M")
  end

  def departure_time
    self.departure.try(:strftime,"%H:%M")
  end

end
