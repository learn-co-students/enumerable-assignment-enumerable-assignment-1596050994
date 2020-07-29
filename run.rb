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
    instructors.map do |instructors_hash_info|
     instructors_hash_info[:name]
    #  binding.pry
    end 
end

# p all_names()



def name_and_role
    names = {}
    instructors.map do |instructors_hash_info|
        names = instructors_hash_info[:name], 
        names = instructors_hash_info[:role]
        # binding.pry
    end 
end
#   p name_and_role()


def all_coaches
    instructors.select do |instructors_hash_info|

        if instructors_hash_info[:role] == "Coach"
            instructors_hash_info
        end

    end 
end
# p all_coaches


def all_leads
    instructors.select do |instructors_hash_info|

        if instructors_hash_info[:role] == "Lead"
            instructors_hash_info
        end

    end 
end
# p all_leads



def first_instructor_with_a_car
    instructors.find do |instructors_hash_info|

        if instructors_hash_info[:owns_car] == true
            instructors_hash_info
        end

    end 
end
# p first_instructor_with_a_car



def instructors_with_more_than_1_sibling
    instructors.select do |instructors_hash_info|

        if instructors_hash_info[:siblings] > 1
            instructors_hash_info
        end

    end     
end
# p instructors_with_more_than_1_sibling



def most_siblings
    siblings = 0
    instructors.select do |instructors_hash_info|

        if siblings < instructors_hash_info[:siblings] 
            siblings = instructors_hash_info[:siblings]
            instructors_hash_info.select do |last|
                last[1]
            end

        end
    end 
end
p most_siblings


def total_siblings
    siblings = 0
    instructors.map do |instructors_hash_info|
        siblings += instructors_hash_info[:siblings]
    end
    siblings
end

p total_siblings




# binding.pry
# 0