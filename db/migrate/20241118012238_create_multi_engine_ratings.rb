class CreateMultiEngineRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :multi_engine_ratings do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message

      t.timestamps
    end
  end
end
