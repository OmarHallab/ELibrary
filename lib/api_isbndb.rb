# 1 - require needed libraries here
#     + if the libraries were installed as gems,
#       there is not need to include them here

# 2 - class begins here 
class Whatever

  # class method goes here
  # ....
end


# 3 - call the class method here and store the response in a variable

@variable_name = Whatever.class_method_name

# 4 - print the values in the variable

puts @variable_name.inspect

# 4 - to run the code in this class, use the following command from the
#     command line:
#
#     $ bin/rails runner lib/api_isbndb.rb
#
#     the results should appear in the command line because we used `puts`
#     earlier to print the variable_name