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



def all_names
    instructors.map do|instructors_element| 
        instructors_element[:name]
    end
end



def name_and_role
    name = 
    instructors.map do |instructors_element|
    end
end

binding.pry

def all_coaches
    instructors.find do |instructors_element|
        instructors_element[:role] == "Coach"
    end
end



def all_leads
    instructors.find do |instructors_element|
        instructors_element[:role] == "Lead"
    end
end

binding.pry

def first_instructor_with_a_car

end



def instructors_with_more_than_1_sibling

end



def most_siblings

end



def total_siblings

end




binding.pry
0