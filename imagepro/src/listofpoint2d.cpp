#include "image/listofpoint2d.hpp"
#include <iostream>

namespace image {

    void ListOfPoint2D::addPoint(const Point2D& point) {
        NodePoint2D* newNode = new NodePoint2D(point); 

        if (head == nullptr) { 
            head = tail = newNode;
        } else { 
            tail->next = newNode; 
            tail = newNode;       
        }
    }

    void ListOfPoint2D::show() const {
        NodePoint2D* current = head;
        while (current != nullptr) { 
            std::cout << "(" << current->point.getX() << ", " << current->point.getY() << ")" << std::endl;
            current = current->next;
        }
    }

    void ListOfPoint2D::clear() {
        NodePoint2D* current = head;
        while (current != nullptr) {
            NodePoint2D* toDelete = current;
            current = current->next;
            delete toDelete; 
            toDelete = nullptr;  
        }
        head = tail = nullptr;
    }

    ListOfPoint2D::~ListOfPoint2D() {
        clear();
    }



} 
