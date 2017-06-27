#!/usr/bin/perl

#the plain text to encrpyt

$ms = "messageisin3rdtrashcanatdupontcircle"; 

@wds = split(//,$ms);

$cnt = @wds;

#create two arrays, one for the leftover chars and one for the extracted #text 

@top = undef;
@bottom = undef;



#foreach loop that takes every other char starting at position 0 makes the @top loop. 
#It also extracts every other remaining char starting at array position 1

foreach $n(0..$cnt-1){
     
	 if($n % 2 == 0){
	 push(@top,$wds[$n]);
	 
	 }
	 
	 push(@bottom,$wds[$n+($n+1)]);
}


#foreach loop that arranges the elements from the @top array and then the @bottom array into a @final array

foreach $t(@top){

push(@final,$t);

}

foreach $b(@bottom){

push(@final,$b);

}


   foreach $f(@final){
 
 
 #$f contains the output to be copied into the decrypt_rail.pl script  
  
   print $f;
   
   }
   
   
   
print "\n";












