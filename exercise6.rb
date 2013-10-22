grocery_list = ["carrots", "toilet paper", "apples", "salmon"]

grocery_list.each { |item|
	puts "* #{item}"
}

puts "Let's add rice to the list!"
grocery_list << "rice"

def print_list array

	puts "You have #{array.length} items on your list:"
	array.each do |item|
		puts "* #{item}"
	end
end

print_list(grocery_list)


def check_list array, item

	if array.include?(item)
		puts "You need to pick up #{item}s!"
	else
		puts "You don't need to pick up #{item}s today!"
	end
end

check_list(grocery_list, "banana")

puts "The second item on your list is #{grocery_list[1]}."

print_list(grocery_list.sort)

def delete_item array, item

	array.delete(item)
	array
end

print_list(delete_item(grocery_list, "salmon"))