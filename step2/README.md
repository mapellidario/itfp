# STEP 2

## compile

`g++ -c gaus2dgen.cpp -o gaus2dgen.o`
`g++ -c gaus2d.cpp -o gaus2d.o`
`g++ -o gaus2d gaus2dgen.o gaus2d.o`

provare ad aggiungere il parametro `-save-temps` alla fine dei primi due comandi
e vedere quali file vengono prodotti