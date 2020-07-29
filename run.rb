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
    instructors.collect do |instructor_hash|
        instructor_hash[:name]
    end
end


def name_and_role
    instructors.collect do |instructor_hash|
        {instructor_hash[:name] => instructor_hash[:role]}
    end
end


def all_coaches
    instructors.select do |instructor_hash|
        instructor_hash[:role] == "Coach"
    end
end


def all_leads
    instructors.select do |instructor_hash|
        instructor_hash[:role] == "Lead"
    end
end


def first_instructor_with_a_car
    instructors.find do |instructor_hash|
        instructor_hash[:owns_car] == true
    end
end

def instructors_with_more_than_1_sibling
    instructors.select do |instructor_hash|
        instructor_hash[:siblings] > 1
    end
end


def most_siblings
    instructors.max_by do |instructor_hash|
        instructor_hash[:siblings]
    end
end


def total_siblings
    instructors.collect do |instructor_hash|
        instructor_hash[:siblings]
    end.sum
end

