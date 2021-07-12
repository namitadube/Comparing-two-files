
open(fh,"<TRS_IGV30_random1_bf_run_avg_five.tsv");
open(fh1,"+<annotation_1");
open(fh2,"+>TRS_IGV30_random1_bf_run_avg_five_annotate");

@c = <fh>; 
$b1 = join ("",@c);
@a1 = split(/\n/,$b1);  #read line into array
#close(fh);
#print @c;
$r=scalar @c;
#print $r;

for ($t=0;$t<scalar @a1;$t++)
{
#print "e";
@col1 = split(/\t/,$a1[$t]); #split array into columns

$l[$t]=$col1[0];
$m[$t]=$col1[1];
$n[$t]=$col1[2];
}
#print $m[$t];

@d = <fh1>; 
$b = join ("",@d);
@a = split(/\n/,$b);  #read line into array
#close(fh);
#print @a;
$r=scalar @a;
#print $r;

for ($s=0;$s<scalar @a;$s++)
{#print "e";
@col = split(/\t/,$a[$s]); #split array into columns
$d1[$s]=$col[0];
$d2[$s]=$col[1];
$d3[$s]=$col[2];
$d4[$s]=$col[3];
$d5[$s]=$col[4];

$d6[$s]=$col[5];
=comment
$d7[$s]=$col[6];
$d8[$s]=$col[7];
$d9[$s]=$col[8];
$d10[$s]=$col[9];
$d11[$s]=$col[10];
$d12[$s]=$col[11];
$d13[$s]=$col[12];
$d14[$s]=$col[13];
$d15[$s]=$col[14];

$d16[$s]=$col[15];
$d17[$s]=$col[16];
$d18[$s]=$col[17];
$d19[$s]=$col[18];
$d20[$s]=$col[19];
$d21[$s]=$col[20];
$d22[$s]=$col[21];
$d23[$s]=$col[22];
$d24[$s]=$col[23];

#print "$d15[$s]";
@genes=split(/,/,$col[14]);

foreach(@genes)
{
print fh2 "$d1[$s]\t$d2[$s]\t$d3[$s]\t$d4[$s]\t$d5[$s]\t$d6[$s]\t$d7[$s]\t$d8[$s]\t$d9[$s]\t$d10[$s]\t$d11[$s]\t$d12[$s]\t$d13[$s]\t$d14[$s]\t$d15[$s]\t$_\n";
}}
#print "$d1[$s]\n";
#print fh2 "$d1[$s]\t$d5[$s]\n";


#print "$b[1]\n";
=cut
for ($T=0;$T<scalar @a1;$T++)
{

if($l[$T] eq $d1[$s]) 
{ #print "2";
print fh2 "$a1[$T]\t$d6[$s]\n";
}

}

}
