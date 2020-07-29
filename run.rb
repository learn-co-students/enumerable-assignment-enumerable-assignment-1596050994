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
    
    all_instructor_names = instructors.map {|instructor_info| instructor_info.values[0]}

end

all_names

def name_and_role

    instructors.map do |instructor_name, instructor_role|
        instructors_names_and_role = instructor_role
        binding.pry
        0
    end

    # all_instructor_roles_and_names = []
    # instructors.map {|instructor_key, instructor_info|}
    #     all_instructor_roles_and_names << {instructor_info.keys, instructor_info.values}
    #     binding.pry
    #     0
    # end 

end

name_and_role

def all_coaches

end



def all_leads

end



def first_instructor_with_a_car

end



def instructors_with_more_than_1_sibling

end



def most_siblings

end



def total_siblings

end




0