# DNA and Gene Sequence Practical - Guess Who!
Mini practical session for 10-16 year olds about how we learn about the DNA sequence of genes. Estimated time: 15 minutes, expandable to 1 hour.
Full documentation below! (Or to jump straight to the perl script [here](https://github.com/passdan/genesequencepractical/blob/master/DNA-searcher.pl))!

![Practical setup](images/0-composite_images.jpg)

<h3>Objectives</h3>
* Learn about how DNA is made up of 4 different bases and different sections make up <b>Genes</b>.
* Learn how different versions of genes control how people/animals/plants look and work.
* Learn how we can sequence and read DNA to find out what our Guess Who subject looks like!

<h3>Resources and setup</h3>
* 4 colours of ball-pit balls or 3D printed units (approximately 6 of each).
* Staging area for 12 balls/units (In 3 base blocks for explaining codons if required).
* Computer/laptop for searching the sequence against database (Raspberri Pi is perfect, Mac works too, PCs need more setup).
* Print, laminate and cut out Gene cards and face parts (for human Guess Who).
* Blutack/velcro.
- NOTE: We used images from shutterstock which we can't share for copyright reasons from [Here](http://www.shutterstock.com/pic-163929290/stock-vector-fashion-male-avatars-hairstyles-and-eyes-in-different-colors-mouths-noses-glasses.html) and [Here](http://www.shutterstock.com/pic-170343836/stock-vector-fashion-female-avatars-hairstyles-eyes-mouths-head-for-multiple-combinations-in.html). An alternative is to have the kids draw faces themselves and compare at the end, or be a better artist than me and create them yourself!


<h3>Computer Setup</h3>
* Copy the DNA-searcher.pl program onto your computer and run it (It helps to zoom the screen in). The first argument is an alternate dataset if being used.
* If you are not used to running command line programs follow these steps:
 - Save the program to your home directory.
 - Open the _terminal_ program (Remember this will need a linux (including R-pi) or Mac computer to work easily. A PC will need more setup).
 - Type `ls`. You should see the `./DNA-searcher.pl` listed there. If it is not there, type `pwd` and move the program to the location that it shows you.
 - Type `perl DNA-searcher.pl`
* DONE!
* There is a short PDF file (DNA_Guess_who.pdf) which explains what DNA, genes and the 4 bases are, and the aim of the session. You may want to copy that over if you think it would be useful.

<h3>Running the session</h3>
After a brief intro, the session follows these stages. Usually I assign one kid to each stage and then rotate roles but alternatively each child could do the full run with their gene:
* Select one varient/allele/type of gene from each 'genepool'.
* Generate the DNA sequence of your gene with the coloured balls/units on the stand ('zooming in on the gene')
* Using the 'laser-decoder', translate the coloured balls into DNA bases (saying it out loud)
* Type the sequence into the computer program as the decoder reads it out
* Search the sequence and add to the diagram that is forming!

Hopefully this may be of use to some people. On the first day I had one "This is really cool", one that wanted to see how the program was made, and generally them all wanting to do the different roles.

There is also the ability to load in other datasets than just 'Human Faces' (default). Some ideas were 'see what food this animal has been eating from it's poo' or 'create an animal', and is simple to modify.

Comments appreciated.
Daniel
