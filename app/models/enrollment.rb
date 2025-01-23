class Enrollment < ApplicationRecord
  before_validation :strip_phone_number
  after_save :to_ghl

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true, format: { with: /\A\d{10}\z/, message: "must be a valid 10-digit phone number" }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }

  def strip_phone_number
    self.phone = phone.to_s.gsub(/[-() ]/, "")
  end

  def to_ghl
    ghl_url = ENV['ghl_enroll']
    ghl_payload = {
      "first name" => "#{self.first_name}",
      "last name" => "#{self.last_name}",
      "email" => "#{self.email}",
      "phone" => "#{self.phone}",
      "notes" => "
      
      Interested program: #{self.location}
      Goals: #{self.goals}
      Previous training: #{self.previous_training}
      Comments: #{self.comments}
      Preferred date: #{self.preferred_date} #{self.preferred_availability}
      Alternate date: #{self.alternate_date} #{self.alternate_availability}
      ",
      "Program of interest" => "#{self.location}"
    }     
    HTTParty.post(ghl_url, body: ghl_payload.to_json, headers: { "Content-Type" => "application/json" })
  end

  #:first_name, :last_name, :phone, :email, :goals, :previous_training, :comments, :preferred_date, :preferred_availability, :alternate_date, :alternate_availability, :location
  
end
