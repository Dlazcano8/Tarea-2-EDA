#include "image/region.hpp"
#include <iostream>
#include <vector>

namespace image {

    Region::Region() : id(0), size(0) { }

    Region::~Region() { }

    void Region::addPoint(Point2D point) {
        points.addPoint(point);  
        size++;
    }

    int Region::getSize() const {
        return size;
    }

    void Region::setID(int _id) {
        id = _id;
    }

    int Region::getID() const {
        return id;
    }

    void Region::showRegion(int imageWidth, int imageHeight) const {

        std::vector<std::vector<char>> regionMatrix(imageHeight, std::vector<char>(imageWidth, ' '));

        NodePoint2D* current = points.getHead();  
        while (current != nullptr) {
            int x = current->point.getX();
            int y = current->point.getY();
            if (x >= 0 && x < imageHeight && y >= 0 && y < imageWidth) {
                regionMatrix[x][y] = '*'; 
            }
            current = current->next;
        }

        // // Mostrar la región
        // std::cout << "----------------------" << std::endl;
        // std::cout << "Region ID: " << id << ", Size: " << size << std::endl;
        // std::cout << "----------------------" << std::endl;
        for (const auto& row : regionMatrix) {
            for (char pixel : row) {
                std::cout << pixel;
            }
            std::cout << std::endl;
        }
    }



} 
