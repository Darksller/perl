my $str = "apple pie";
if ($str =~ /pi/) {
   print "pi is in $str\n";
}

$str =~ s/pie/juice/;
print $str;

if($str =~ /juice/) {
  print "start index of juice in $str: $-[0]\n"
}

print "substring: ". substr($str, 0, 3);