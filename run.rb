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
  names=[]
    instructors.select do |info|
        names.push(info[:name])
  end
  names
end



def name_and_role
    names_and_roles=instructors.map do |info|
            info[:name] && info[:role]  
    end
    binding.pry
end

name_and_role

def all_coaches
    coaches=instructors.select do |info|
        if info[:role] == "Coach"
            info
        end
    end
    coaches
end



def all_leads
    leads=instructors.select do |info|
        if info[:role] == "Lead"
            info
        end
    end
    leads
end



def first_instructor_with_a_car
    person_with_car=instructors.find do |info|
        if info[:owns_car] == true
            info
        end
    end
    person_with_car
end


def instructors_with_more_than_1_sibling
    more_siblings=instructors.select do |info|
        if info[:siblings] > 1
        info
        end
    end
    more_siblings
end


def most_siblings
#  could not solve without each  
end



def total_siblings
    instructors.reduce(0) do |total_sibling, high_number|
        total_sibling + high_number[:siblings]
    end
    
end




binding.pry
run