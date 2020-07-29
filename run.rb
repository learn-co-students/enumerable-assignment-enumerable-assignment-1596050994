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




def all_names(instructor_info)
    count = 0 
    n_a = []
    while count < instructor_info.length 
     n_a << instructor_info[count][:name]
     count += 1
    end
    n_a
    binding.pry

end



def name_and_role(instructor_info)
    instructor_info.map{ |name, role|
       # in
}

end



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




#binding.pry
0