class ChangeTextFormatInAppliedcolleges < ActiveRecord::Migration
  def up
   change_column :students, :applied_colleges, :string
  end

  def down
   change_column :students, :applied_colleges, :text
  end
 
end
