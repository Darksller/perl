sub printMatrix {
    my @matrix = @_;
    for my $i (0..$#matrix) {
        for my $j (0..$#{$matrix[$i]}) {
            print $matrix[$i][$j] . " ";
        }
        print "\n";
    }
}


my @numbers = ([qw(1 2 3)],[qw(1 2 3)],[qw(1 2 3)]);

my @matrix = @numbers;
# print "Enter 3x3 matrix elements :\n";
# for my $i (0..2) {
#     for my $j (0..2) {
#         print "Enter the element [$i][$j]: ";
#         chomp($matrix[$i][$j] = <STDIN>);
#     }
# }

print "The matrix:\n";
printMatrix(@matrix);


my @result;
for my $i (0..2) {
    for my $j (0..2) {
        $result[$i][$j] = $numbers[$i][$j] + $matrix[$i][$j];
    }
}
print "The result of matrix addition:\n";
printMatrix(@result);

my @transposed = ();
for my $row (@result) {
  for my $column (0 .. $#$row) {
    push(@{$transposed[$column]}, $row->[$column]);
  }
}

print "The transposed result matrix:\n";
printMatrix(@transposed);


my $diagonal_sum = 0;
for my $i (0 .. $#transposed) {
    $diagonal_sum += $transposed[$i][$i];
}
print "Sum along the diagonal: $diagonal_sum\n";
