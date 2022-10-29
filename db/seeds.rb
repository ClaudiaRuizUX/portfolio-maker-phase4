# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
project_a = Project.create!(title: "Trees", description: "Green of spring")
project_b = Project.create!(title: "Circles", description: "Geometric circle")
project_c = Project.create!(title: "Apples", description: "Many Apples")
project_d = Project.create!(title: "Squares", description: "Some Squares")

section_a = Section.create!(name: "Festival this year")
section_b = Section.create!(name: "Top Artists")

skill_a = Skill.create!(name: "JavaScript", project: project_a, section: section_a)
skill_b = Skill.create!(name: "Wireframes", project: project_a, section: section_b)
