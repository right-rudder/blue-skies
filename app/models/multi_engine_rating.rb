class MultiEngineRating < ApplicationRecord
  before_validation :strip_phone_number
  after_save :to_ghl
  after_save :to_portal
  
  validates :name, presence: true
  validates :phone, presence: true, format: { with: /\A\d{10}\z/, message: "must be a valid 10-digit phone number" }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }
  validates :message, presence: true

  def strip_phone_number
    self.phone = phone.to_s.gsub(/[-() ]/, "")
  end

  def to_ghl
    ghl_url = ENV['ghl_multi_engine_rating']
    ghl_payload = {
      "name" => "#{self.name}",
      "email" => "#{self.email}",
      "phone" => "#{self.phone}",
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
      "campaign": "multi_engine_rating_program",
      "account_id": 3, #Blue skies account ID
      "metadata": {
        "message": "#{self.message}"
      }
    }     
    HTTParty.post(portal_url, body: portal_payload.to_json, headers: { "Content-Type": "application/json", "X-API-Key": api_key })
  end
end
