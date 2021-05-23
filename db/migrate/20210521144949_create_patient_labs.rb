class CreatePatientLabs < ActiveRecord::Migration[6.1]
  def change
    create_table :patient_labs do |t|
      t.string :lab_number
      t.string :clinic_code
      t.string :date_of_test
      
      t.timestamps
    end
  end
end
