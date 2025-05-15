class LeasebackProgram < ApplicationRecord
  before_validation :strip_phone_number
  after_save :to_ghl
  after_save :to_portal
  
  validates :name, presence: true
  validates :phone, presence: true, format: { with: /\A\d{10}\z/, message: "must be a valid 10-digit phone number" }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }
  validates :aircraft_manufacturer, presence: true
  validates :aircraft_model, presence: true
  validates :aircraft_year, presence: true
  validates :message, presence: true

  def strip_phone_number
    self.phone = phone.to_s.gsub(/[-() ]/, "")
  end

  def to_ghl
    ghl_url = ENV['ghl_leaseback_program']
    ghl_payload = {
      "name" => "#{self.name}",
      "email" => "#{self.email}",
      "phone" => "#{self.phone}",
      "aircraft_manufacturer" => "#{self.aircraft_manufacturer}",
      "aircraft_model" => "#{self.aircraft_model}",
      "aircraft_year" => "#{self.aircraft_year}",
      "message" => "#{self.message}",
    }     
    HTTParty.post(ghl_url, body: ghl_payload.to_json, headers: { "Content-Type" => "application/json" })
  end

  def to_portal
    portal_url = "https://portal.rightruddermarketing.com/api/leads"
    api_key = ENV['PORTAL_API_KEY']
    portal_payload = {
      "first_name": "#{self.name.strip.squeeze(" ").split(" ").first}",
      "last_name": "#{self.name.strip.squeeze(" ").split(" ").second}",
      "email": "#{self.email}",
      "phone": "#{self.phone}",
      "campaign": "leaseback_program",
      "account_random_id": "ac_mdbja2js", #Blue skies account ID
      "metadata": {
        "Aircraft_manufacturer": "#{self.aircraft_manufacturer}",
        "Aircraft_model": "#{self.aircraft_model}",
        "Aircraft_year": "#{self.aircraft_year}",
        "Message": "#{self.message}",
      }
    }     
    HTTParty.post(portal_url, body: portal_payload.to_json, headers: { "Content-Type": "application/json", "X-API-Key": api_key })
  end
end
