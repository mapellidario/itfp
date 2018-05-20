#ifndef GEUS2DGEN_H
#define GEUS2DGEN_H

double gauss (double x, double y, double mux, double muy, 
    double sigmax, double sigmay, double rho);

double randunif (double xmin=0, double xmax=1);

struct point {
    double x;
    double y;
};

point gaussrand (
        double mux, double muy, double sigmax, double sigmay, double rho, 
        double xmin, double xmax, double ymin, double ymax);

#endif //GEUS2DGEN_H