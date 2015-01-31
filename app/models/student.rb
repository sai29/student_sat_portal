class Student < ActiveRecord::Base
	serialize :applied_colleges, Array
	has_one :mentor
	validates :name, presence: true, length: { maximum:50 }
	validates :age, presence: true, numericality: { lesser_than_or_equal_to: 120, only_integer: true}
	validates :sat_score, presence: true, numericality: {lesser_than_or_equal_to: 1600, only_integer: true}

	def college_id_to_college_name(applied_colleges,colleges)
		applied_colleges.each do |var|
     colleges << var.to_i
    end
    @college_list = []
    @colleges.each do |var|
      @college_list << College.find_by(id:var)
    end
	end
end
