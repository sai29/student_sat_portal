class Mentor < ActiveRecord::Base
	has_many :students
	validates :name, presence: true, length: { maximum:50 }
	validates :age, presence: true, numericality: {lesser_than_or_equal_to: 120, only_integer: true}
	validates :bio, presence: true, length: { maximum:1000 }
end

