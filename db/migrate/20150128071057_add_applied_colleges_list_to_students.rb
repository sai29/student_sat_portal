class AddAppliedCollegesListToStudents < ActiveRecord::Migration
  def change
    add_column :students, :applied_colleges, :text
  end
end
