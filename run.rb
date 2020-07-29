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
    instructors.map {|instructor| instructor[:name]}
    # binding.pry
end



def name_and_role
    instructors.reduce {|instructor| }
end



def all_coaches
    instructors.select {|instructor| instructor[:role] == "Coach"}
end



def all_leads
    instructors.select {|instructor| instructor[:role] == "Lead"}
end



def first_instructor_with_a_car
    instructors.find {|instructor| instructor[:owns_car] == true}
end



def instructors_with_more_than_1_sibling
    instructors.find_all {|instructor| instructor[:siblings] > 1}
end



def most_siblings
    instructors.max_by {|instructor| instructor[:siblings]}
end



def total_siblings
    instructors. 
end




binding.pry
0