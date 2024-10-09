#include <iostream>                  
#include <unordered_map>      
#include <string>      

#include "image/image.hpp" 
#include "image/region.hpp"
#include "image/point2d.hpp"

using namespace std;

std::string trim(const std::string& str) {
    size_t first = str.find_first_not_of(" \t");
    size_t last = str.find_last_not_of(" \t");
    return (first == std::string::npos || last == std::string::npos) ? "" : str.substr(first, last - first + 1);
}

int main() {
    unordered_map<string, image::Image*> images; 
    string command;

    cout << ">> Bienvenido a ImagePro" << endl;

    while (true) {
        cout << ">> ";
        getline(cin, command); // Leer la entrada del usuario

        if (command == "exit" || command == "e") {
            cout << ">> Saliendo de ImagePro" << endl;
            break;
        }

        size_t equalsPos = command.find("=");
        if (equalsPos != std::string::npos && command.substr(equalsPos + 1, 5) == " read") {
            std::string id = trim(command.substr(0, equalsPos - 1));  
            std::string path = trim(command.substr(equalsPos + 6));  
            
            std::cout << ">> Leyendo imagen " << path << " con id " << id << std::endl;

            images[id] = image::Image::readImage(path);  
            if (images[id] == nullptr) {
                std::cout << "Error al leer la imagen desde el path: " << path << std::endl;
            } 
        }

        else if (command.substr(0, 5) == "show ") {
            std::string id = trim(command.substr(5));
            auto it = images.find(id);
            if (it != images.end()) {
                it->second->show(); 
            } else {
                std::cout << "Id " << id << " no encontrado." << std::endl;
            }
        } 
        
        else if (command.substr(0, 10) == "getRegions") {
            std::string id = trim(command.substr(10));
            auto it = images.find(id);
            if (it != images.end()) {

                it->second->getRegions();
                
                int regionCount = it->second->regions.getRegionCount();
                cout << "La imagen de id " << id << " tiene " << regionCount << " regiones." << endl;
                
                image::NodeRegion* currentRegion = it->second->regions.getHead();

                while (currentRegion != nullptr) {
                    std::cout << "Region " << currentRegion->region.getID() << " -> size " << currentRegion->region.getSize() << std::endl;
                    currentRegion = currentRegion->next;
                }
            } else {
                std::cout << "Id " << id << " no encontrado." << std::endl;
            }
        } 
        
        else if (command.substr(0, 11) == "showRegion ") {
            std::string rest = trim(command.substr(11));
            size_t spacePos = rest.find(" ");
            if (spacePos != std::string::npos) {
                std::string imageId = trim(rest.substr(0, spacePos));
                std::string regionIdStr = trim(rest.substr(spacePos + 1));
                int regionId = std::stoi(regionIdStr);

                auto it = images.find(imageId);
                if (it != images.end()) {
                    image::Region* region = it->second->regions.getRegionById(regionId);
                    if (region != nullptr) {
                        region->showRegion(it->second->getWidth(), it->second->getHeight());
                    } else {
                        std::cout << "No se encontró la región con ID: " << regionId << " en la imagen con ID: " << imageId << std::endl;
                    }
                } else {
                    std::cout << "Id de imagen " << imageId << " no encontrado." << std::endl;
                }
            } else {
                std::cout << "Formato incorrecto. Uso: showRegion <id_imagen> <id_region>" << std::endl;
            }
        }

        else {
            std::cout << "Comando no reconocido." << std::endl;
        }

    }

    for (auto& pair : images) {
        delete pair.second;  
    }


    return 0;
}
