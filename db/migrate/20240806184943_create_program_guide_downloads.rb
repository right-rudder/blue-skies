class CreateProgramGuideDownloads < ActiveRecord::Migration[7.0]
  def change
    create_table :program_guide_downloads do |t|
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
