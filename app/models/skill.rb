class Skill < ActiveRecord::Base
    belongs_to :section
    has_many :projects
end