class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :id_number
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :gender
      t.string :data_of_birth

      t.timestamps
    end
  end
end
