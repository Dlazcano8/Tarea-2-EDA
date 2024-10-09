/*
 Class NodePoint2D
*/

#include "point2d.hpp"

namespace image {
	class NodePoint2D{		
	public:		
		Point2D point;
		NodePoint2D* next;

		NodePoint2D(const Point2D& p) : point(p), next(nullptr) {}
	};
}
