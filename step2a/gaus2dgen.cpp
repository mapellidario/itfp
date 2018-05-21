#include "gaus2dgen.h"
#include <cstdlib>
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

double randunif (double xmin, double xmax) {
    return (xmax - xmin) * ( (double) rand() / RAND_MAX) + xmin ;
}

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
