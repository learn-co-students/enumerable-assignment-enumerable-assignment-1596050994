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
    names_array = []
    instructors.count do |instructor_info_hash|
        names_array << instructor_info_hash[:name]
    end 
    #binding.pry 
    puts names_array
end



# name_and_role wasn't working the way I had it, I deleted
# some of the code that was not working and didn't have 
# time to go back and fix it
def name_and_role
    name_and_role_array = []
    instructors.count do |instructor_info_hash|
        #binding.pry 
        
       
    end 
    binding.pry 
    puts name_and_role_array
end
#name_and_role


def all_coaches
    coaches_array = []
    instructors.count do |instructor_info_hash|
        if instructor_info_hash.has_value?("Coach")
            coaches_array << instructor_info_hash
        end
    end 
    puts coaches_array
end

#all_coaches



def all_leads
    leads_array = []
    instructors.count do |instructor_info_hash|
        if instructor_info_hash.has_value?("Lead")
            leads_array << instructor_info_hash
        end
    end 
    puts leads_array
end
#all_leads



def first_instructor_with_a_car
    first_with_car_hash = {}
    instructors.find do |instructor_info_hash|
        if instructor_info_hash.has_value?(true)
            first_with_car_hash = instructor_info_hash
        end
    end  
    puts first_with_car_hash
end
#first_instructor_with_a_car



def instructors_with_more_than_1_sibling
    with_siblings_plural_array = []
    instructors.count do |instructor_info_hash|
        if instructor_info_hash[:siblings] > 1
            with_siblings_plural_array << instructor_info_hash
        end
    end 
    puts with_siblings_plural_array
end
#instructors_with_more_than_1_sibling


#was still tweaking this
def most_siblings
    greatest_amount_of_siblings = 0
    instructors.count do |instructor_info_hash|
        #binding.pry 
        if instructor_info_hash[:siblings] > greatest_amount_of_siblings
            greatest_amount_of_siblings = instructor_info_hash[:siblings]
        end
    end 
    instructors.count do |instructor_info_hash|
        if instructor_info_hash[:siblings] == greatest_amount_of_siblings
            return instructor_info_hash
        end
    end 
    print inst
end
#most_siblings



def total_siblings
    total_siblings_amount = 0
    instructors.count do |instructor_info_hash|
        total_siblings_amount += instructor_info_hash[:siblings]
    end 
    #binding.pry 
    print total_siblings_amount
end
#total_siblings




#binding.pry
#0