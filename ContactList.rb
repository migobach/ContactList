# Build contact list - maybe use a hash to accomplish this
 #menu that allows a user to select
# - Create a contact
# - View all contacts - create a loop to do this
# - Exit
# 1 how do I add items to an array
# 1.5 how do I add items to a specific spot in an array?
# 2 how do I add items to a Hash
# 3 how do I shovel >> instead of .push

@contacts = [
  {first_name: "Michael", last_name: "Bach", hometown: "Kodiak, Alaska"},
  {first_name: "Andrew", last_name: "Yasso", hometown: "Las Vegas, Nevada"},
]

def menu
  puts "1) Add contact information"
  puts "2) View all contact information"
  puts "3) Print all hometowns"
  puts "4) Delete a contact"
  puts "5) Exit"
  return gets.strip.to_i
end

def create_contact
  puts "Enter your first name"
  first_name = gets.strip
  puts "Enter your last name"
  last_name = gets.strip
  puts "Enter your hometown"
  hometown = gets.strip
  @contacts << {first_name: first_name, last_name: last_name, hometown: hometown}
  puts "You just created the following contact: #{@contacts.last}"
end

# def delete_user
  # @contacts.reject { |dname| dname["first_name"]}

def delete_user
  @contacts.delete_if { |dname| dname[:"first_name"] == @delete_name } #why does the semicolon go before? #delete_if is an array method - if is finding that bit of information in the array and deleting the whole object.
end # I feel like this has to be the answer, but I am not sure why it isn't working.... please advise - I think that there is something wrong with the

# def delete_user
  # @contacts.delete('{first_name: "@delete_name", last_name: "", hometown: ""}')
# end

# def delete_user
  # @contacts.delete('@delete_name') # this won't work becuase the @delete_name is not an indexed item in the array = it is in the hash
# end

# @contacts.each do |name| #I don't totally understand the do functions - why can't I put this here? - how do I call it from the function below?
  # puts name[:first_name]
# end


while true
  case menu
    when 1
      puts "You chose 1"
      create_contact
    when 2
      puts "Here is the contact list:"
      new_arr = @contacts.map { |person| person.to_s } # so we know that @contacts does the same thing: why?
      puts new_arr
    when 3
      puts "Here are all the hometowns"
      @contacts.each do |town|
        puts town[:hometown] #add an if statement to not show duplicates - how do I do that? how many functions are in this line of code?
      end
    when 4
      puts "Which name would you like to delete?"
      @delete_name = gets.strip
      puts "Are you sure you would like to delete #{@delete_name}? Yes or No?"
      delete_answer = gets.strip
        if delete_answer == "Yes"
          delete_user
          puts "#{@delete_name} has been deleted"
          puts "Here are the remaining contacts:"
          puts @contacts #insert Dave's display contacts with index method here
        else
          menu
        end
    when 5
      puts "Thank you!"
      exit
    else
      puts "Try again."
  end
end
# menu


# is there a way to use the below variable to accomplish the same as .map?
# @contacts.each do |name|
  # puts name[:first_name]
# end




# This is my first list of needed functions
# def contact_first_name
# end

# def contact_last_name
# end

# def contact_email
# end

# def contact_phone
# end

# def contact_city
# end
#
