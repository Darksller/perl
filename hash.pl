my %hash = (
  'a' => 'b',
  'apple' => 'juice',
);

my $value = $hash{'apple'}; 

print "apple = $value\n";

print exists $hash{'a'} ? "element with key 'a' exists\n" : "element with key 'a' does not exist\n";

delete $hash{'a'};
$hash{'apple'} = "pie"; 

print "hash output:\n";
while (my ($key, $value) = each %hash) {
    print "$key = $value\n";
}