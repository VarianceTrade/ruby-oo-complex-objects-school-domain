# code here!
class School
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student_name, grade)
        if !roster[grade]
            roster[grade] = []
        end
        roster[grade].push(student_name)
    end

    def grade(number)
        return roster[number]
    end

    def sort
        roster.each do |grade, students|
            students.sort!
        end
    end
end

# roster = { 
#     9 => ["Zach", "Sam", "Pam"], 
#     10 => ["Sally", "John", "Ted"]
# }


# school.add_student("John", 9)
# school.add_student("Sam", 10)

# roster = {}

# roster = {9 => ["Zach", "Sam"], 10 => ["Sally", "John"]}

# roster[9].push("Pam")

# roster = { 9 => ["Zach", "Sam", "Pam"], 10 => ["Sally", "John"] }

# roster[10].push("Ted")



# if (!roster.include? 11) {
#     roster[11] = []
# }


# roster = { 
#     9 => ["Zach", "Sam", "Pam"], 
#     10 => ["Sally", "John", "Ted"]
#     11 => []
# }

# roster[11].push("Tammy")

# roster = { 
#     9 => ["Zach", "Sam", "Pam"], 
#     10 => ["Sally", "John", "Ted"],
#     11 => ["Tammy"]
# }