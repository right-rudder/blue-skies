class ProfessionalFlightProgram < ApplicationRecord
  before_validation :strip_phone_number
  after_save :to_ghl
  
  validates :name, presence: true
  validates :phone, presence: true, format: { with: /\A\d{10}\z/, message: "must be a valid 10-digit phone number" }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }
  validates :start_date, presence: true
  validates :target_date, presence: true
  validates :message, presence: true

  def strip_phone_number
    self.phone = phone.to_s.gsub(/[-() ]/, "")
  end

  def to_ghl
    ghl_url = ENV['ghl_pro_flight']
    ghl_payload = {
      "name" => "#{self.name}",
      "email" => "#{self.email}",
      "phone" => "#{self.phone}",
      "start_date" => "#{self.start_date}",
      "target_date" => "#{self.target_date}",
      "message" => "#{self.message}",
    }     
    HTTParty.post(ghl_url, body: ghl_payload.to_json, headers: { "Content-Type" => "application/json" })
  end
end
