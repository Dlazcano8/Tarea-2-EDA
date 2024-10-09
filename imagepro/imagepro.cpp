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

    std::string path = "../images/1.bmp";
    image::Image* im1 = image::Image::readImage(path);

    if (im1 == nullptr) {
        cout << "Error al leer la imagen." << endl;
    return 1;
    }

    im1->show();

    im1->getRegions();

    cout << ">> Mostrando todas las regiones detectadas visualmente:" << endl;
    im1->regions.showRegions(im1->getWidth(), im1->getHeight());  // Pasar ancho y altura


    // Limpiar memoria
    delete im1;


/*
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
        } else {
            std::cout << "Comando no reconocido." << std::endl;
        }

    }

    for (auto& pair : images) {
        delete pair.second;  
    }
*/

    return 0;
}
