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



def all_names(instructors)
    instructors.map do |name, name_hash|
        name_hash[:name]  #|teachers|
        return[:name]
    end 
end



def name_and_role
   new_array = [ ]
   insturctors.select do |names, roles|
    if names == 
     
    end 
   end 
   h = { "a" => 100, "b" => 200, "c" => 300 }
   h.select {|k,v| k > "a"}  #=> {"b" => 200, "c" => 300}
   h.select {|k,v| v < 200}  #=> {"a" => 100}

end
new_array 
end 


def all_coaches
    instructors.map do |coach, coach_hash|
        coach_hash[:name]
        return[:name]
    end 
end



def all_leads
    instructors.map do |lead, lead_hash|
        lead_hash[:name]
        return[:name]
    end 

end



def first_instructor_with_a_car
    instructor.find do |k, v|
        if v == true
            return[:name]
        


end



def instructors_with_more_than_1_sibling

end



def most_siblings

end



def total_siblings

end




binding.pry
0