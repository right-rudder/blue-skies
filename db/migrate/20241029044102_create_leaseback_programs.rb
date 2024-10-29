class CreateLeasebackPrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :leaseback_programs do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :aircraft_manufacturer
      t.string :aircraft_model
      t.string :aircraft_year
      t.text :message

      t.timestamps
    end
  end
end
