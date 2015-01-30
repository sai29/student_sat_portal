class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :country
      t.integer :sat_min_score
      t.integer :sat_max_score
      t.integer :tution_fees

      t.timestamps
    end
  end
end
