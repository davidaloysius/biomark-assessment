class CreateLabStudies < ActiveRecord::Migration[6.1]
  def change
    create_table :lab_studies do |t|
      t.string :code
      t.string :name
      t.string :value
      t.string :unit
      t.string :ref_range
      t.string :finding
      t.string :result_state

      t.timestamps
    end
  end
end
