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
#should return an array of all the instructors' names:
def instructors_name
   instructors.map do |instructor_hash|
    instructor_hash[:name]
   end
end
instructors_name()
def name_and_role
    instructors.map do |instructor_hash|
        {instructor_hash[:name] => instructor_hash[:role]}
    end
end

def total_siblings
    instructors.select do |instructor_hash|
      #  instructor_hash[siblings].sum
    end
end
    

def all_coaches
instructors.map do |instructor_hash|
  #  instructor_hash[:name][:role]["Coach"]
    end
end



def all_leads
    lead_instructors = instructors.map do |instructor_hash|
     #   instructor_hash[:lead][:name]
    end
end



def first_instructor_with_a_car
    instructors.find do |instructor_hash|
        instructor_hash[:owns_car] == true
        # instructor_hash[:owns_car]
    end
   # Will return one element of the original array
   #If nothing satisfies the condition, will return `nil`

end



def instructors_with_more_than_1_sibling
    sib_instructors = instructors.select do |instructor_hash|
        instructor_hash[:siblings] > 1
    end
    sib_instructors
end


def most_siblings
    instructors.max_by do |instructor_hash|
        instructor_hash[:siblings]
    end
    # max_by takes an array of stuff and uses the last line of block (number) and returns the highest number (element)
end


#array_of_all_names = all_names()
array_of_name_and_role = name_and_role()
array_of_coaches = all_coaches()
array_of_leads = all_leads 
array_first_car = first_instructor_with_a_car()
#sibs_over-one = instructors_with_more_than_1_sibling()
most_sibs = most_siblings()
total_sibs = total_siblings()

#binding.pry 
0
