#ifndef LISTOFREGION_HPP
#define LISTOFREGION_HPP

#include "noderegion.hpp"

namespace image {

class ListOfRegion {
private:
    NodeRegion* head;  
    NodeRegion* tail;  
    int regionCount;   

public:
    ListOfRegion() : head(nullptr), tail(nullptr), regionCount(0) {} 
    ~ListOfRegion();                                                 

    void addRegion(const Region& region);  
    void showRegions(int imageWidth, int imageHeight) const;
	void showRegionSizes() const;              
    int getRegionCount() const;
    Region* getRegionById(int regionId) const;          
    void clear();       

    NodeRegion* getHead() const { return head; }
    NodeRegion* getTail() const { return tail; }

    void assignRegionIDs();
};

} 

#endif
