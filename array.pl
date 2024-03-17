my @numbers = (99, 9, 19, 20, 9, 1);

my $lastElement = $numbers[$#numbers];

print "first array: @numbers\n";
print "Last element in first array: $lastElement\n";

print "Enter a number: ";
my $number = <>;
my @higher = grep { $_ > $number } @numbers;
print "The numbers in array higher than inputted: @higher\n";

my @odd = grep { $_ % 2 != 0 } @numbers;
print "The odd numbers in array: @odd\n";

my $sum = 0;
for(my $i = 2; $i < @numbers; $i += 3){
    $sum+= $numbers[$i];
}
print "The sum of every third number in array: $sum\n";

print "Enter new array with 3 numbers: ";
my @arr;
for (1 .. 3) {
    my $num = <>;
    push @arr, $num;
}

my @mergedArr = (@numbers, @arr);
print "The concatenation of arrays: @mergedArr\n";
