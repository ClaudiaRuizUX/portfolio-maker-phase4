class Section < ApplicationRecord
	has_many :skills
	has_many :projects, through: :skills
end