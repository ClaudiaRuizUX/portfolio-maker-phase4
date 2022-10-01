class Project < ApplicationRecord
	has_many :skills
	has_many :sections, through: :skills
end