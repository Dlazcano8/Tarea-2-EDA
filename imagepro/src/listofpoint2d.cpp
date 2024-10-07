#include "image/listofpoint2d.hpp"
#include <iostream>

namespace image {

void ListOfPoint2D::addPoint(const Point2D& point) {
    points.push_back(point);  
}

void ListOfPoint2D::show() const {
    for (const auto& point : points) {
        std::cout << "(" << point.getX() << ", " << point.getY() << ")" << std::endl;
    }
}

} 