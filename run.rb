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
    instructors.map do |instructors_info|
        instructors_info[:name] 
    end
end



def name_and_role
    instructors.map do |instructors_info|
        { instructors_info[:name] => instructors_info[:role] } 
    end
end


def all_coaches
    instructors.select do |instructors_info|
        instructors_info[:role] == "Coach"
    end
end



def all_leads
    instructors.select do |instructors_info|
        instructors_info[:role] == "Lead"
    end
end


def first_instructor_with_a_car
    instructors.find do |instructors_info|
        instructors_info[:owns_car]# no need to put the value since it's eql to tru
    end
end




def instructors_with_more_than_1_sibling
    instructors.select do |instructors_info|
        instructors_info[:siblings] > 1
    end
    
end


def most_siblings
    instructors.max_by do |instructors_info|
        instructors_info[:siblings]
    end
end


def total_siblings
    instructors.sum do |instructors_info|
        instructors_info[:siblings]
    end
end





#binding.pry
