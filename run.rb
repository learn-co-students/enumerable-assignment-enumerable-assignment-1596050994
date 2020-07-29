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
    #for this problem I want to return the name  of every instructor ["Annie", "B", "C","D"]
    #I want to return a new array. I will create a new array and populate it
    #I am using map because it will change the key values into strings.
    #those strings I will return in a new array
    
    final_names = [] 
    instructors.map do |info|
        name = info[:name]
        final_names << name 
        
    end
    p final_names
end

#all_names I invoked the method here to use pry


def name_and_role
    #{"Annie Z" => "Coach"}
    #Name ^^^      role^^^ 
    #instructors[:name]    instructors[:role]
    #Unsure for how to keep the values and store them in a hash
    #hash[:key] = [:value]
    
    final = []
    instructors.find do |hash|
        
        
        name = hash[:name]
        role = hash[:role]
        
        

        ####I could also do the below but that's hardcoding?
        final << "#{name} => #{role}"
         
        
    end

    return final

end

#name_and_role when using pry returns ["Annie Z => Coach"]. When pry runs again it does the next name and role
#however my final is said to be undefined
#ultimately I am giving an array with strings



def all_coaches
  #I want to find Annie and Isabel
  #if their :role == "coach"
end



def all_leads
 #find Eric and Sylwia
 #if their :role == "lead"
 return that
end



def first_instructor_with_a_car
    car = instructors.select do |key, value|
        #we want to return a true
        key[:own_car]

end



def instructors_with_more_than_1_sibling
    #find all the instructors with more than one sibling
    #or select

    more_than_one = instructors.find do |hash, key|
        if hash[:key] > 1
            hash[key]
        end
end



def most_siblings
    most = instructors.max_by do |key, value|
            key[:siblings]
            #this code should return the most siblings
      binding.pry      
    end

end



def total_siblings
#I should be naming my key and value something different here but I couldn't think of another name
#We are going to find :siblings key and sum all of that
    final_sum = instructors.map do |key, value|
        key[:sibling]
    end
    final_sum.sum
    #the .sum method we learned in our labs and I thought I could use it here
end




total_siblings
binding.pry
0