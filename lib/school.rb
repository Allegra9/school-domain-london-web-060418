class School

attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
#to contain keys of grade levels.
#The value of each key will be an array of student names.

  def add_student(student, grade)
    roster[grade] ||= []        #true, exists || or make a new one
    roster[grade] << student
  end
  #school.add_student("Zach Morris", 9)
  #school.roster
  # => {9 => ["Zach Morris"]}

#takes in an argument of a grade and return all of the students in that grade:
  def grade(grade)
    roster[grade]
  end
#school.grade(9)
# => ["Zach Morris", "AC Slater"]

# this method arranges the students name array in each grade by alphabetical order
  def sort
    sorted = {}
      roster.each do |grade, students_array|
      sorted[grade] = students_array.sort
    end
    sorted
  end

end


test_school = School.new("Test School")
puts test_school.roster.length    #  0
test_school.add_student("AC Slater", 10)
puts test_school.roster    # {10=>["AC Slater"]}
    test_school.add_student("Homer Simpson", 9)
    test_school.add_student("Jeff Baird", 10)
    test_school.add_student("Avi Flombaum", 10)
    test_school.add_student("Blake Johnson", 7)
puts test_school.roster   # {10=>["AC Slater", "Jeff Baird", "Avi Flombaum"], 9=>["Homer Simpson"], 7=>["Blake Johnson"]}

print test_school.grade(10)   #["AC Slater", "Jeff Baird", "Avi Flombaum"]
print test_school.roster.sort
#[[7, ["Blake Johnson"]], [9, ["Homer Simpson"]], [10, ["AC Slater", "Jeff Baird", "Avi Flombaum"]]]     #sorted names
