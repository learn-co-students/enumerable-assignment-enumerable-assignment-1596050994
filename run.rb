require 'pry'

def instructors
    [
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


#should return an array of all the instructors' names
def all_names(instructors_array)
    instructors.map do |instructors_info_hash|
        instructors_info_hash[:name]
    end
end
#p all_names(instructors)

#should return an array of hashes
def name_and_role(instructors_array)
    instructors.map do |instructors_info_hash|
        name_and_role_hash = {}
        name_key = instructors_info_hash[:name]
        role_value = instructors_info_hash[:role]
        name_and_role_hash[name_key] = role_value
        name_and_role_hash
    end
end
#pp name_and_role(instructors)

#should return an array of all the coaches:
def all_coaches(instructors_array)
    instructors.select do |instructors_info_hash|
        instructors_info_hash
        instructors_info_hash[:role] == "Coach"
    end
end
#pp all_coaches(instructors)

#should return an array of all the leads
def all_leads(instructors_array)
    instructors_array.select do |instructors_info_hash|
        instructors_info_hash
        instructors_info_hash[:role] == "Lead"
    end
end
#pp all_leads(instructors)

#should return the first instructor that owns a car
def first_instructor_with_a_car(instructors_array)
    instructors_array.find do |instructors_info_hash|
        instructors_info_hash[:owns_car] == true
    end
end
#p first_instructor_with_a_car(instructors)

#should return an array of instructors with more than 1 sibling
def instructors_with_more_than_1_sibling(instructors_array)
    instructors_array.select do |instructors_info_hash|
        instructors_info_hash[:siblings] > 1
    end
end
#pp instructors_with_more_than_1_sibling(instructors)

#should return an instructor who has the highest number of siblings
def most_siblings(instructors_array)
    instructors_array.max_by do |instructors_info_hash|
        instructors_info_hash[:siblings]
    end
end
#pp most_siblings(instructors)

#return a number that is the sum of all the siblings that the instructors have
def total_siblings(instructors_array)
    sum = 0
    instructors_array.map do |instructors_info_hash|
        sum += instructors_info_hash[:siblings]
    end
    sum
end
#p total_siblings(instructors)



binding.pry
0