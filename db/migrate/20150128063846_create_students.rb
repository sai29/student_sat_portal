class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :sex
      t.integer :age
      t.date :dob
      t.string :current_school
      t.string :current_level
      t.string :country
      t.integer :sat_score

      t.timestamps
    end
  end
end
