require 'pry'

def instructors
   instructors = [
        {
            name: "Annie Z",
            role: "Coach",
            siblings: 2,
            owns_car: false
        },
        {
            name: "Sylwia V",
            role: "Lead",
            siblings: 1,
            owns_car: true
        },
        {
            name: "Isabel L",
            role: "Coach",
            siblings: 0,
            owns_car: true
        },
        {
            name: "Eric K",
            role: "Lead",
            siblings: 4,
            owns_car: false
        }
    ]
end



def all_names
  instructors.map do |name|
    instructors[:name]
  end
end



# def name_and_role
#   instructors.map do |name|
#     instructors[:name]
#   end
#   return {}
# end



def all_coaches
  instructors.select do |coach|
    instructors[:role] == "Coach"
  end
end



def all_leads
  instructors.select do |lead|
    instructors[:role] == "Lead"
  end
end



def first_instructor_with_a_car
  instructors.find do |instructor|
     instructors[:owns_car] = true
  end
end



def instructors_with_more_than_1_sibling
  instructors.select do |sibling|
    instructors[:siblings] > 1
end



def most_siblings
  instructors.max_by do |sibling|
    instructors[:siblings]
  end
end



def total_siblings
  total = instructors.map do |sibling|
    instructors[:siblings] 
  end
  total.sum
end




# binding.pry
# 0