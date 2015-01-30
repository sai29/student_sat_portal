class Student < ActiveRecord::Base
	has_and_belongs_to_many :colleges
	has_one :mentor
	validates :name, presence: true, length: { maximum:50 }
	validates :age, presence: true, numericality: { lesser_than_or_equal_to: 120, only_integer: true}
	validates :sat_score, presence: true, numericality: {lesser_than_or_equal_to: 1600, only_integer: true}
end
