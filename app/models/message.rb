class Message < ApplicationRecord
  before_validation :strip_phone_number
  #after_save :to_fscrm
  
  validates :name, presence: true
  validates :body, presence: true
  validates :phone, presence: true, format: { with: /\A\d{10}\z/, message: "must be a valid 10-digit phone number" }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }

  def strip_phone_number
    self.phone = phone.to_s.gsub(/[-() ]/, "")
  end

  def to_fscrm
    api_key = ENV['fscrm_key']

    # Set the endpoint and headers
    endpoint = "https://app.flightschoolcrm.com/api/lead/webhook/store"
    headers = {
      "api-key" => api_key,
      "Content-Type" => "application/json"
    }

    # Create the contact
    contact_payload = {
      "name" => "#{self.name}",
      "Email" => "#{self.email}",
      "Phone" => "#{self.phone}",
    }
    HTTParty.post(endpoint, headers: headers, body: contact_payload.to_json)
  end  
end
