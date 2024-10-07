/*
 Class ListOfPoint2D
*/

#ifndef LISTOFPOINT2D_HPP
#define LISTOFPOINT2D_HPP

#include "point2D.hpp"
#include <vector>

namespace image {

class ListOfPoint2D {
private:
    std::vector<Point2D> points;

public:
    ListOfPoint2D() = default;
    void addPoint(const Point2D& point);  
    void show() const;                    
};

} 

#endif 

