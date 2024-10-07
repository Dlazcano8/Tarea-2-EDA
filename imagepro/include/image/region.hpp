/*
 Class Region
*/

#ifndef REGION_HPP
#define REGION_HPP

#include "listofpoint2d.hpp"  
#include "point2D.hpp"        
#include <iostream>  

namespace image {
	class Region{
	private:
		int id;
		int size;
		ListOfPoint2D points;		
	public:
		Region();
		void showRegion() const;
        virtual ~Region();

		void addPoint(Point2D point);
		int getSize() const; 		
	};
}

#endif 