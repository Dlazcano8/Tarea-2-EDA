/*
 Class ListOfPoint2D
*/

#ifndef LISTOFPOINT2D_HPP
#define LISTOFPOINT2D_HPP

#include "nodepoint2d.hpp"


namespace image {

class ListOfPoint2D {
private:
    NodePoint2D* head = nullptr;
    NodePoint2D* tail = nullptr;

public:
    ListOfPoint2D() {};
    ~ListOfPoint2D();

    void addPoint(const Point2D& p);
    void show() const;
    void clear();	

    NodePoint2D* getHead() const { return head; }           
};

} 

#endif 

