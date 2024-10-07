#include "image/region.hpp"

namespace image {

Region::Region() : id(0), size(0) { }

Region::~Region() { }

void Region::addPoint(Point2D point) {
    points.addPoint(point);  
    size++;
}

int Region::getSize() const {
    return size;
}

void Region::showRegion() const {
    std::cout << "Region ID: " << id << ", Size: " << size << std::endl;
    points.show();  
}

} 
