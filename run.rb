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
    instructors.map do |instructors|
        instructors[:name]
        #binding.pry
    end
end

all_names



def name_and_role
    instructors.map do |instructors|
       {instructors[:name] => instructors[:role]}
       #binding.pry
    end
end

name_and_role



def all_coaches
    instructors.select do |instructors|
        instructors[:role] == "Coach"
        #binding.pry
    end
end

all_coaches



def all_leads
    instructors.select do |instructors|
        instructors[:role] == "Lead"
    end
end

all_leads



def first_instructor_with_a_car
    instructors.find do |instructors|
        instructors[:owns_car]
        #binding.pry
    end
end

first_instructor_with_a_car


def instructors_with_more_than_1_sibling
    instructors.select do |instructors|
        instructors[:siblings] > 1
    end
end

instructors_with_more_than_1_sibling



def most_siblings
    instructors_with_more_than_1_sibling.max do |instructors|
            instructors[:siblings]
    end
end

most_siblings


def total_siblings
   all_number_of_siblings = instructors.map do |instructors|
        instructors[:siblings]
   end
   total_number_of_siblings = all_number_of_siblings.sum
end

total_siblings


#binding.pry
0
