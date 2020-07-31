require 'pry'

def info
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
    info.map do |profile|
        profile[:name]
    end

end



def name_and_role
    info.map{ |profile|
        {profile[:name]=> profile[:role]}
       # in
}

end



def all_coaches
    info.select { |profile|
        profile[:role] == "Coach"
        }

end



def all_leads
    info.select do |profile|
        profile[:role] == "Lead"
    
    end
end



def first_instructor_with_a_car
    binding.pry
    info.find do |profile|
        profile[:owns_car] == true
    end

end



def instructors_with_more_than_1_sibling
    info.select do |profile|
        profile[:siblings] > 1
    end

end



def most_siblings
    binding.pry
     info.max_by do |profile|
        profile[:siblings]
     end

end


def total_siblings
    info.sum do |profile|
        profile[:siblings]
    end
end

# def total_siblings
#   total_sibs =  info.map do|profile|
#         profile[:siblings]    
#     }
#     total_sibs.sum
# end

# def new_def
#     binding.profile
#     info.eachdo |profile|
#     p profile

array_of_all_names = all_names()
array_of_name_and_role = name_and_role()
array_of_coaches = all_coaches()

sylwia = first_instructor_with_a_car()
annie_eric = instructors_with_more_than_1_sibling()
eric = most_siblings()

binding.pry
0