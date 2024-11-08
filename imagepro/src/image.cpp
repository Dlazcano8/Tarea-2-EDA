#include "image/image.hpp"
#include <fstream>
#include <iostream>
#include <cassert>
#include <cstring>
#include <vector>
#include <queue>

namespace image{


    Image::Image(): width(0), height(0), th_value(100), data(nullptr){

    }

    Image::Image(int w, int h): width(w), height(h), th_value(100),  data(nullptr){

    }

    Image::Image(int w, int h, uchar* _data): width(w), height(h), th_value(100), data(_data){
       threshold();
    }

    void Image::threshold(){
        if (data != nullptr) {
            for(int i = 0; i < height*width; i++){            
                if (static_cast<int>(data[i]) < th_value){
                    data[i] = static_cast<char>(0);
                }
                else{
                    data[i] = static_cast<char>(1);                    
                }
            }
        }
    }
    int Image::getValue(int row, int col){
        int pos = row*width + col;
        return static_cast<int>(data[pos]);
    }

    void Image::show(){
        std::cout << "----------------------" << std::endl;
        std::cout << "size [ (w: " << width << ") x   ( h:" << height << ")]" <<  std::endl;        
        std::cout << "---------------------" << std::endl;
        for(int i = 0 ; i < height ; i++ ){
            for(int j = 0; j < width; j++ ){
                //std::cout<< getValue(i,j) << " "; 
                if (getValue(i,j) == 0) {
                    std::cout<<" ";
                }
                else{
                    std::cout<<"*";
                }
            }
            std::cout<<std::endl;
        }
    }

    void Image::getRegions() {
        std::vector<std::vector<bool>> visited(height, std::vector<bool>(width, false));
        int regionId = 1;

        auto isValid = [&](int row, int col) -> bool {
            return row >= 0 && row < height && col >= 0 && col < width && getValue(row, col) == 1 && !visited[row][col];
        };

        for (int row = 0; row < height; ++row) {
            for (int col = 0; col < width; ++col) {
                if (getValue(row, col) == 1 && !visited[row][col]) {

                    Region* newRegion = new Region();
                    newRegion->setID(regionId);

                    std::queue<Point2D> q;
                    q.push(Point2D(row, col));
                    visited[row][col] = true;

                    while (!q.empty()) {
                        Point2D p = q.front();
                        q.pop();
                        newRegion->addPoint(p);

                        std::vector<Point2D> neighbors = {
                            Point2D(p.getX() - 1, p.getY()),
                            Point2D(p.getX() + 1, p.getY()),
                            Point2D(p.getX(), p.getY() - 1),
                            Point2D(p.getX(), p.getY() + 1)
                        };

                        for (const auto& neighbor : neighbors) {
                            if (isValid(neighbor.getX(), neighbor.getY())) {
                                q.push(neighbor);
                                visited[neighbor.getX()][neighbor.getY()] = true;
                            }
                        }
                    }

                    regions.addRegion(*newRegion);
                    regionId++;
                }
            }
        }

        regions.assignRegionIDs();
        //std::cout << "Número total de regiones detectadas: " << regions.getRegionCount() << std::endl;
    }


    Image::~Image() {
        if (data != nullptr) {
            delete[] data;  
            data = nullptr; 
        }
    }

    Image* Image::readImage(std::string &path){

        Image* im = nullptr;
        std::ifstream fin(path, std::ios::binary);
        char info[54];
        // read the 54-byte header
        fin.read(info, 54);
        // extract image height and width from header
        int width = *(int*)&info[18];
        int height = *(int*)&info[22];
        short int planes = *(short int*)&info[26];
        short int bits = *(short int*)&info[28];
        int imagesize = *(int*)&info[34];
        int numcolors = *(int*)&info[46];
        assert(info[0]=='B' && info[1] =='M');
        assert(bits == 8);
        // std::cout<< "planes " << planes << std::endl;
        // std::cout<< "bits " << bits << std::endl;
        // std::cout<< "imagesize " << imagesize << std::endl;
        // std::cout<< "numcolors " << numcolors << std::endl;
        // std::cout<< info[0] << info[1] << std::endl;
        //reading colortable
        char  colors[numcolors*4];
        fin.read(colors, numcolors*4);        
        if (imagesize == height * width) {            
            char* data = new char[imagesize];
            //read the pixel values
            fin.read(data, imagesize); 
            fin.close();
            char* ordered_data = new char[imagesize];
            //copy data in in a proper order            
            //std::cout<< "----------------" <<std::endl;
            for(int i = 0; i < height ; i++){
                std::memcpy(ordered_data + width*i, data + width*(height - 1 - i ), width);
            }                    
            delete[]  data;            
            im = new Image(width, height, reinterpret_cast<uchar*>(ordered_data));        
        }
        assert(im != nullptr);
        return im;
    }

}

