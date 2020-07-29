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

#instructors is array name?

#`all_names` should return an array of all the instructors' names:
def all_names
    instructors.collect {|name| instructors[:name]}
end

all_names

#- `name_and_role` should return an array of hashes, structured the following way:
def name_and_role
    instructors.collect {|name| instructors[:name][:role]}
end

name_and_role

#- `all_coaches` should return an array of all the coaches:
def all_coaches
    instructors.select {|role| instructors[:role] == "Coach"}
end

all_coaches

#- `all_leads` should return an array of all the leads: 
def all_leads
    instructors.select {|role| instructors[:role] == "Lead"}
end

all_leads

#- `first_instructor_with_a_car` should return the first instructor that owns a car:
def first_instructor_with_a_car
    instructors.find {|name| instructors[:owns_car] == true }
end

first_instructor_with_a_car

#
def instructors_with_more_than_1_sibling
    instructors.select {|name| instructors[:siblings] > 1 }
end

instructors_with_more_than_1_sibling

def most_siblings
    instructors.max_by {|name| instructors[:siblings] }
end

most_siblings

def total_siblings
    instructors.map {|siblings| instructors[:siblings]}.reduce
end

total_siblings


binding.pry
0