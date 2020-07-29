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
    end
    # binding.pry
end

all_names 

def name_and_role
    instructors.map do |instructor|
        {instructor[:name] => instructor[:role]}
    end
    # binding.pry
end

name_and_role

def all_coaches
    instructors.select do |instructor|
        instructor[:role] == "Coach"
    end
end

all_coaches

def all_leads
    result = instructors.select do |instructor|
        instructor[:role] == "Lead"
    end
    result
end

all_leads


def first_instructor_with_a_car
    instructors.find do |instructor|
        instructor[:owns_car]
    end
end

first_instructor_with_a_car


def instructors_with_more_than_1_sibling
    instructors.find_all do |instructor|
        instructor[:siblings] > 1
    end
end

instructors_with_more_than_1_sibling


def most_siblings
    instructors_with_more_than_1_sibling.max do |instructor| 
        instructor[:siblings]
    end

end

most_siblings

def total_siblings
    nums_of_siblings = instructors.map do |instructor|
        instructor[:siblings]
    end

    total_num_of_siblings = nums_of_siblings.sum
end

total_siblings


binding.pry
0