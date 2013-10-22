students = {
	cohort1: 34,
	cohort2: 42,
	cohort3: 22
}

def print_students array

	array.each do |k, v|
		puts "#{k}: #{v} students"
	end
end

print_students(students)

students[:cohort4] = 43

puts students.keys

students.each do |k, v|
	v *= 1.05
end

print_students(students)

def delete_students array, key
	puts "Deleted #{key}!"
	array.delete(key)
	array
end

print_students(delete_students(students, :cohort2))

def sum_students array
	sum = 0
	array.each do |k, v|
		sum += v
	end
	return sum
end

puts sum_students(students)