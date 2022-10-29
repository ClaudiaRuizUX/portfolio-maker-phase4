Software = Section.create!(title: "Software")
Design = Section.create!(title: "Design")

Calculator = Project.create!(title: "Calculator", description: "distances")
Map = Project.create!(title: "Map", description: "use Esri")

JavaScript = Skill.create!(name: "JavaScript", section_id: 1, project_id: 1)
Wireframes = Skill.create!(name: "Wireframes", section_id: 2, project_id: 2)
AnotherSkill = Skill.create!(name: "AnotherOne", section_id: 1, project_id: 1)