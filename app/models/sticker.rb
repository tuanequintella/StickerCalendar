class Sticker < ActiveRecord::Base
	validates_presence_of :habit_name
end
