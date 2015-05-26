#!/usr/bin/perl
use strict;
use warnings;
$| = 1;
#select(undef, undef, undef, 0.25);

my %sequenceDB;

if(@ARGV == 0){
  print "Loading default database: Guess Who!\n";sleep(1);
  loadGuessWhoDB();
}else{
  open(DB, '<', $ARGV[0]) or die "Couldnt load the $ARGV[0] database";
  while(<DB>){
    chomp;
    my @line = split('\t', $_);
    $sequenceDB{$line[0]} = $line[1];
  }
}

print "Sequence Database loaded...\n";sleep(1);
print "Gene options are:\n";
foreach my $key (sort { $sequenceDB{$a} cmp $sequenceDB{$b} } keys %sequenceDB){
  print "$key\t$sequenceDB{$key}\n";
  select(undef, undef, undef, 0.1);
}
sleep(2);

my $prompt = "\n#######################################################\n## Type a DNA sequence to search for what gene it is ##\n#######################################################\n\nInput: ";

system("clear");
print $prompt;

while (my $seq = <STDIN>){
  chomp($seq);
  if (exists $sequenceDB{$seq}){
    my $n = 0;
    print "Searching: 0%"; sleep(1);
    while ($n < 100){ $n+=25; print "----$n%";sleep(1);};
    my $genestring = $sequenceDB{$seq};
    print "\n\nThis DNA sequence is the gene for:  "; sleep(1);
    foreach (split //, $genestring){
      print;
      select(undef, undef, undef, 0.1);
    }
    print "!\n";
    sleep(1);
    restart();
  }else{
    sleep(1);
    print "\nOops! This sequence doesn't exist, make sure it's right!\n";
    sleep(1);
    restart();
  }
}

sub restart {
  print "\n~~~Press Enter to search again~~~\n";
  while (my $in = <STDIN>){
   if($in eq "\n"){
     system("clear");
     print $prompt;
     return;
   }
  }
}

sub loadGuessWhoDB {

  %sequenceDB = (
  TGGAGCAT => "Attached Earlobes",
  AATAACAT => "Detached Earlobes",
  GTGGATGG => "Brown Eyes",
  CCAGTGGT => "Blue Eyes",
  CGGTTGCT => "Green Eyes",
  ACATTCCT => "Curly Hair",
  GCCGCAAC => "Straight Hair",
  GTTGAAGG => "Blonde Hair",
  TCCCGGAT => "Brown Hair",
  TAGACTGG => "Black Hair",
  CTGGATCT => "Ginger Hair",
  ATGCCGTG => "Boy",
  ACACCCGT => "Girl",
  );
  return;
}
