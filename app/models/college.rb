class College < ActiveRecord::Base
	validates :name, presence:true, length: { maximum:50 }
	validates :sat_min_score, presence:true, numericality: {lesser_than: 2400, only_integer: true}
	validates :sat_max_score, presence:true, numericality: {lesser_than_or_equal_to: 2400, only_integer: true}
end
