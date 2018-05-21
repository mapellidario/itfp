# STEP 2

## files

```
> tree
.
├── gaus2d.cpp
└── gaus2ddir
    ├── gaus2dgen.cpp
    └── gaus2dgen.h
```

## compile

```.bash
cd gaus2dgen
g++ -c gaus2dgen.cpp -o gaus2dgen.o
cd ..

g++ -c gaus2d.cpp -o gaus2d.o -Igaus2ddir

g++ -o gaus2d gaus2ddir/gaus2dgen.o gaus2d.o
```
