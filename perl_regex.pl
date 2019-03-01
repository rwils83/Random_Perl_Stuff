#You are given a scalar value $my_text. Assign the value of a regular 
#expression to scalar $match_my_text to be used to match the string
#"express".

# Initialization
$my_text = "You should try to use regular expressions while drinking an Espresso";
# create scalar to use in regex
$match_my_text = "express";
if ($my_text =~ m/$match_my_text/) {
	print "Match FOUND\n";
} else {
	print "Match NOT FOUND - Incorrect REGEXP\n";
}
