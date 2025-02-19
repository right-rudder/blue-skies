class CreateProfessionalFlightPrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :professional_flight_programs do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.date :start_date
      t.date :target_date
      t.text :message

      t.timestamps
    end
  end
end
