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
    instructors.map do |instructor|
        instructor[:name]
        # binding.pry
    end
end



def name_and_role
    names = all_names
    role = instructors.map do |instructor|
        instructor[:role]
        # binding.pry
    end
     name_role = [names.zip(role).to_h]
end



def all_coaches
    instructors.select do |instructor|
        instructor.values.include?("Coach")
        # binding.pry
    end
end



def all_leads
    instructors.select do |instructor|
        instructor.values.include?("Lead")
        # binding.pry
    end
end



def first_instructor_with_a_car
    instructors.find do |instructor|
        instructor[:owns_car] == true
        # binding.pry
    end
end



def instructors_with_more_than_1_sibling
    instructors.select do |instructor|
        instructor[:siblings] > 1
        # binding.pry
    end
end



def most_siblings
    most = instructors_with_more_than_1_sibling
    most.max do |a,b| 
        a[:siblings] <=> b[:siblings]
    # binding.pry
    end
end



def total_siblings
    siblings = instructors.map do |instructor|
        instructor.select do |personal,info|
            personal == :siblings
        # binding.pry
        end 
    end
    # binding.pry
    siblings.map{|num| num[:siblings]}.sum
end




binding.pry
0