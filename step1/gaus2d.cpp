/*
g++ -o gaus2d gaus2d.cpp -g 
*/

#include <iostream>
#include <cmath>

double gauss (double x, double y, double mux, double muy, double sigmax, double sigmay, double rho){
    double auxrho = 1 - rho*rho ;
    double auxmux = x - mux ;
    double auxmuy = y - muy ;
    double auxmux2 = auxmux / sigmax ;
    double auxmuy2 = auxmuy / sigmay ;
    double norm = 1. / ( 2 * M_PI * sigmax*sigmay * sqrt( auxrho ) ) ;
    double exponent = -1. / ( 2*auxrho ) * ( auxmux2*auxmux2 + auxmuy2*auxmuy2 - 2*rho*auxmux2*auxmuy2  ) ;
    return norm * exp( exponent ) ;
}

double randunif (double xmin=0, double xmax=1) {
    return (xmax - xmin) * ( (double) rand() / RAND_MAX) + xmin ;
}

struct point {
    double x;
    double y;
};

point gaussrand (
        double mux, double muy, double sigmax, double sigmay, double rho, 
        double xmin, double xmax, double ymin, double ymax) {
    point randomGauss;
    while(1){
        randomGauss.x = randunif (xmin, xmax);
        randomGauss.y = randunif (ymin, ymax);
        double z = randunif ();
        double fxy = gauss(randomGauss.x, randomGauss.y, mux, muy, sigmax, sigmay, rho);
        // std::cout << " " << fxy << "," << z  << std::endl ;
        if ( fxy > z ) {
            return randomGauss;
        }
    }
}

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