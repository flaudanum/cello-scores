# Cello music sheets

The music scores in this project are written in `.ly` files that must be compiled with [LilyPond](https://lilypond.org/). For instance, file `May-the-force-be-with-you.ly` may be compiled to PDF documents with the LilyPond command line interface `lilypond` in a terminal:

```csh
$ lilypond May-the-force-be-with-you.ly
GNU LilyPond 2.19.84
Processing `May-the-force-be-with-you.ly'
Parsing...
Interpreting music...[8][16][24][32][32]
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
Layout output to `/tmp/lilypond-4vynJY'...
Converting to `May-the-force-be-with-you.pdf'...
Deleting `/tmp/lilypond-4vynJY'...
Success: compilation successfully completed
```
