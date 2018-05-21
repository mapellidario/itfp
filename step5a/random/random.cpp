#include "random.h"
#include <cstdlib>

double randunif (double xmin, double xmax) {
    return (xmax - xmin) * ( (double) rand() / RAND_MAX) + xmin ;
}