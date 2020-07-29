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
    all_the_names = instructors.map do |instructors_hash|
        instructors_hash[:name]
    end
    return all_the_names
end



def name_and_role
    instructors.map do |instructors_hash|
        instructors_hash.select {|key, value| key == [:name]
    end

end



def all_coaches
    all_the_coaches = instructors.map do |instructors_hash|
        instructors_hash[:role] == "Coach"
    end
    return all_the_coaches
end



def all_leads
    all_the_leads = instructors.map do |instructors_hash|
        instructors_hash[:role] == "Lead"
    end
    return all_the_leads
end



def first_instructor_with_a_car

end



def instructors_with_more_than_1_sibling

end



def most_siblings

end



def total_siblings

end



#binding.pry
0
