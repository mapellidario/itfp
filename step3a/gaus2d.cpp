/*
*/

#include "gaus2dgen.h"
#include <iostream>
#include <cmath>

int main () {

    // gauss1
    double mux1    = 1. ;
    double muy1    = 0. ;
    double sigmax1 = 1.5 ;
    double sigmay1 = 2.5 ;
    double rho1    = 0.7 ;

    // boundaries
    double xmin = -10;
    double xmax = 10;
    double ymin = -10;
    double ymax = 10;

    int signalEvents = 10000;

    point gaussian2drandom;
    std::cout << "x,y" << std::endl ;
    for (int i=0; i<signalEvents; i++){
        gaussian2drandom = gaussrand(mux1,muy1,sigmax1,sigmay1,rho1,
            xmin,xmax,ymin,ymax);
        std::cout << gaussian2drandom.x << "," 
            << gaussian2drandom.y << std::endl;
    }

    return 0;
}