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
 instructors.map do |names|
   names[:name]
  # binding.pry
 end
end

all_names




def name_and_role
   instructors.map do |names|
  # binding.pry

end
end

name_and_role

def all_coaches

    instructors.find do |name|
        if name[:role] === "Coach"
         #   binding.pry
         puts name
        end
    end
end








def all_leads
    instructors.find do |name|
        if name[:role] === "Lead"
         #   binding.pry
         puts name
        end
    end

end




def first_instructor_with_a_car
   first_instructor= instructors.find do|name|
        if name[:owns_car]==true
            name[:owns_car]
        end
    end
end

#puts first_instructor_with_a_car


def instructors_with_more_than_1_sibling
  instructors.find do|name|
    if name[:siblings] > 1
        puts name
    end
end
end

#puts instructors_with_more_than_1_sibling


def most_siblings
sib_count=0
  instructors.max_by do|name|

   if name[:siblings] > sib_count
   
        sib_count = name[:siblings]
    # binding.pry
   end
     name

    end

end






def total_siblings

    new_array=[]

    instructors.map do |name|
        new_array << name[:siblings]
        #binding.pry
    end
  new_array.sum
end

puts total_siblings



#binding.pry
0