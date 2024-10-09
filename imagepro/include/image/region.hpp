#ifndef REGION_HPP
#define REGION_HPP

#include "listofpoint2d.hpp"

namespace image {

class Region {
private:
    int id;
    int size;
    ListOfPoint2D points; 

public:
    Region();
    void showRegion(int imageWidth, int imageHeight) const;
    void addPoint(Point2D point);
    int getSize() const;
    void setID(int _id);
	int getID() const;
	~Region();
};

} 

#endif
