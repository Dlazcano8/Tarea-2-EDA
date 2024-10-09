#ifndef NODEREGION_HPP
#define NODEREGION_HPP

#include "region.hpp"

namespace image {

class NodeRegion {
public:
    Region region;         
    NodeRegion* next;    

    NodeRegion(const Region& reg) : region(reg), next(nullptr) {}
};

} 

#endif
