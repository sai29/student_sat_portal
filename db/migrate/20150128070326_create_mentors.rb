class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :sex
      t.integer :age
      t.date :dob
      t.text :bio

      t.timestamps
    end
  end
end
