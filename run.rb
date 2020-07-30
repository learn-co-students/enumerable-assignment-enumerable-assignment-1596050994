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


#I want to return an array of all the string names
#we are going to iterate over an array of hashes and build out methods
#map will help us iterate and return a new array

def all_names
    
    instructors.map do |instructor_hash|
        instructor_hash[:name]
        
    end
end

#all_names


#we want to return an array
#this array is going to have hashes
#map returns a new array
#find returns the first element that satisfies a condition
#select returns a subarray that satisfies various conditions. it is a subarray

#here we want to return map. bc we are mutating the array and returning it in a new array.
#name_and_role 

#how to add new item to a hash
        #hash {:item => 1}


def name_and_role
    
    instructors.map do |instructor_hash|
       {instructor_hash[:name] => instructor_hash[:role]}
        #binding.pry
    end
    

end

#name_and_role

#I am now trying to purposefully find things in this array
#SELECT returns a sub array of same elements satisfying a condition. it preserves a data type
#Block parameter - single element of the array
#Body of the block: the last value should be a boolean
#

def all_coaches
    instructors.select do |instructors_hash|
        instructors_hash[:role] == "Coach"
        #binding.pry
    end

end

#all_coaches



def all_leads
    instructors.select do |instructors_hash|
        instructors_hash[:role] == "Lead"
    end
end

all_leads



#i don't care how many people have a car. I just want to find the first one
#find will not return anything if conditions are not met
#the last value should be a boolean

def first_instructor_with_a_car
    instructors.find do |instructors_hash|
        instructors_hash[:owns_car]
    
    end

end

#first_instructor_with_a_car


#we want to use select because we are displaying a condition and we want it to be satisfied 
#try saving these matches


def instructors_with_more_than_1_sibling

    
  instructors.select do |instructors_hash|  
        instructors_hash[:siblings] > 1
        
    end
    
end

instructors_with_more_than_1_sibling





def most_siblings
    instructors.max_by do |instructor_hash|
        instructor_hash[:siblings] 
        
    end
end

most_siblings



def total_siblings
    instructors.sum do |instructor_hash|
        instructor_hash[:siblings]
    end
end

total_siblings


binding.pry
0