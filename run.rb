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
    instructors_names = instructors.map do |info|
        instructors_names = info[:name]
    end
    instructors_names
end


def name_and_role

    instructors_names_and_role = instructors.map do |info|
        instructors_names_and_role = {info[:name] => info[:role]}
    end
    instructors_names_and_role
end


def all_coaches
    instructors_names_coaches_role = instructors.select do |info|
        info[:role] == "Coach"
    end
    instructors_names_coaches_role
end


def all_leads
    instructors_names_lead_role = instructors.select do |info|
        info[:role] == "Lead"
    end
    instructors_names_lead_role
end


def first_instructor_with_a_car
    the_very_first = instructors.find do |info| 
        info[:owns_car]
    end
    the_very_first
end


def instructors_with_more_than_1_sibling
    instructors_with_more_than_1 = instructors.select do |info|  
        info[:siblings] > 1
    end
    instructors_with_more_than_1
end


def most_siblings
    most_siblings_winner = instructors.max do |info|  
        info[:siblings]
    end
    most_siblings_winner
end


def total_siblings
    all_siblings = 0
    instructors.select do |info|
        all_siblings += info[:siblings]
    end
    all_siblings
end