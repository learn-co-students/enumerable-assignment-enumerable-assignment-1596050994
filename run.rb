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



def all_names(team_all_names)
    # binding.pry
#    human_names.select do |human_names|
 get_all_names_coaches_leads().select do |array_names|
    array_names[names:][:role] == array_names
   end
end
#  returns an "array with everyones names" using select will r/t an array ! 
# i want to combine all_names and all_coaches "using helper method" so the key word here is "all"
# i want to combine all names/coaches and all leads in one b/c they are all arrays. interpolation?


def name_and_role(hash_str)
# names: and their roles
name_and_role.find do|name: ,role:|
name_and_role

end

# needs to r/t an array of hashs, as seen in the intsruction an array of hashs --> [{}]
# cna i use map? to 

def all_coaches
# this ties into the first one ! read pesudo
end



def all_leads
# ties into the firstone 
end



def first_instructor_with_a_car(person_with_car)
person_with_car.find do |instructor|
    instructor
end
# usinf find to "find the person with a car which is isabel and swy, who have a car 
#  so [leads: with car"[name:] need and if statement here to 


def instructors_with_more_than_1_sibling(many_bro_sis)

end



def most_siblings(bro_sis)
max_by
end

# using max_by which is to say 

def total_siblings(sibs)
max_by
end




# binding.pry
0