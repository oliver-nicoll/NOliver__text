#!/usr/bin/env ruby
#Testing out ways - Ruby

# File.open('test.txt', 'a') { |f| f.write("Hello world\nGoodbye") }


# fileDataTxt = File.open("test.txt")

# file_data = fileDataTxt.read 

# puts file_data


# File.open("test.txt").each { |docText| 
#     puts "Hello World" 
#     puts docText
#     puts "Goodbye"
# }



#____________Solution below ____________

def file_prepend(file, str)
    new_contents = ""
    File.open(file, 'r') do |fd|
      contents = fd.read
      new_contents = str << contents #shovel into old contents
    end
    # Overwrite the file but now with prepended string on it
    File.open(file, 'w') do |fd| 
      fd.write(new_contents)
    end
end

file_prepend("test.txt", "Hello World\n")

File.open("test.txt", "a"){|f| f.write("\nGoodbye")}

fileDataTxt = File.open("test.txt")

file_data = fileDataTxt.read 

puts file_data
#displays in terminal
