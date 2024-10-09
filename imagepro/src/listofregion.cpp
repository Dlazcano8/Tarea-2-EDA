#include "image/listofregion.hpp"
#include <iostream>

namespace image {

    void ListOfRegion::addRegion(const Region& region) {
        NodeRegion* newNode = new NodeRegion(region);

        if (head == nullptr) { 
            head = tail = newNode;
        } else { 
            tail->next = newNode;
            tail = newNode;
        }
        regionCount++;
    }

    void ListOfRegion::showRegions(int imageWidth, int imageHeight) const {
        NodeRegion* current = head;
        while (current != nullptr) {
            current->region.showRegion(imageWidth, imageHeight); 
            current = current->next;
        }
    }

    void ListOfRegion::showRegionSizes() const {
        NodeRegion* current = head;
        while (current != nullptr) {
            std::cout << "Región con ID: " << current->region.getID() << " tiene tamaño: " << current->region.getSize() << std::endl;
            current = current->next;
        }
    }

    void ListOfRegion::assignRegionIDs() {
        int id = 1;
        NodeRegion* current = head;
        while (current != nullptr) {
            current->region.setID(id);  
            id++;
            current = current->next;
        }
    }

    int ListOfRegion::getRegionCount() const {
        return regionCount;
    }

    void ListOfRegion::clear() {
        NodeRegion* current = head;
        while (current != nullptr) {
            NodeRegion* toDelete = current;
            current = current->next;
            delete toDelete;  
            toDelete = nullptr; 
        }
        head = tail = nullptr;
        regionCount = 0;
    }

    ListOfRegion::~ListOfRegion() {
        clear();
    }


} 
