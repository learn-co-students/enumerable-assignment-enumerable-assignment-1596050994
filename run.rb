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
    instructors.map{|coaches_and_leads|
    coaches_and_leads[:name]
    }
end

def name_and_role    
    Hash[all_names.zip(role)]
end

def role
    instructors.map{|coaches_and_leads|
    coaches_and_leads[:role]
    }
end


def all_coaches
    instructors.select{|coaches_and_leads|
     coaches_and_leads[:role] == "Coach"
}
end



def all_leads
    instructors.select{|coaches_and_leads|
    coaches_and_leads[:role] == "Lead"
}
end



def first_instructor_with_a_car
    instructors.find{|coaches_and_leads|
     coaches_and_leads[:owns_car] == true
    }
end



def instructors_with_more_than_1_sibling
    instructors.select{|coaches_and_leads|
    coaches_and_leads[:siblings] > 1
   }
end



def most_siblings
    instructors.max_by{|coaches_and_leads|
    coaches_and_leads[:siblings]
    }
end



def total_siblings
    instructors.sum{|coaches_and_leads|
    coaches_and_leads[:siblings]
    }
end




binding.pry
0