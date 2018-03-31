=begin comment
Author: Taylor Cochran
goal: To convert the passed date time or the now date time to shrek time
1 shrek = 1 hour 35 minutes
=end comment

sub MAIN{
  (@_.Int > 0) ?? convertArg(@_) !! convertNow();
}

sub convertArg(@args){
  my Str $time = @args[0].Str;
  printShrektime($time);
}

sub convertNow{
  # say DateTime.new(time);
  my Str $current = DateTime.new(time).Str.substr(11..18);
  printShrektime($current);
}

sub printShrektime($input){
  my $shrekTime = (95 / 60);
  my $hour = $input.substr(0..1);
  my $min = $input.substr(3..4);
  my $sec = $input.substr(6..7);
  $min += ($sec / 60);
  $hour += ($min / 60);
  $hour /= $shrekTime;
  say "$input is $hour Shrek hours";
}
