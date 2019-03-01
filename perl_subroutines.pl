# Exercise from learn-perl.org
#Define two subroutines, min and max, which accept an array as input
#and calculate the mininum and maximum numeric value of their
#arguments respectively. Then for each given array, calculate the 
#difference between the maximumm and minumum values

@car_prices = (100, 250, 95, 1300, 4534, 102, 100, 97); #array from exercise
@flight_prices = (85.20, 79.99, 45.30, 130, 45.34, 110.25, 100, 917);#array2 from exercises
# define subroutines
#sub to find min value
sub min {
    $current_min = $_[0];
    foreach $number (@_) {
        if ($number < $current_min) {
            $current_min = $number;
        }
    }
    return($current_min);
}
#sub to find max value
sub max {
    $current_max = $_[0];
        foreach $number (@_) {
            if ($number > $current_max) {
                $current_max = $number;
            }
        }
    return($current_max);
}
#sub to return difference between min and max values
sub range {
    $max = max(@_);
    $min = min(@_);
    return($max - $min);
}
# write code below
print range(@car_prices)."\n";
print range(@flight_prices)."\n";
