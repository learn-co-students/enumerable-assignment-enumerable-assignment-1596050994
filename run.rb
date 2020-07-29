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


#hould return an array of all the instructors' names:
def all_names
     all_names = instructor.map do |name_hash|
            name_hash[:name]
    end



def name_and_role
    names = instructor.map do |instructor_hash|
        instructor_hash[:name][:role]
end



def all_coaches

end



def all_leads
    lead_instructors = instructor.map do |instructor_hash|
        instructor_hash[:lead][:name]
    end
end



def first_instructor_with_a_car

end



def instructors_with_more_than_1_sibling

end



def most_siblings

end



def total_siblings

end
