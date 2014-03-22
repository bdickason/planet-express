class Crew < ActiveRecord::Base
  attr_accessible :age, :avatar, :name, :origin, :quote, :species, :title

	validates_presence_of :name
	validates_presence_of :title, :origin, :age, :avatar, :species, :unless => proc { new_record? }
end
