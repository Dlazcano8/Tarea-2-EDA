/**
 * Class Image
 */

#include <string>
#include "listofregion.hpp"

namespace image {
	class Image; 
	typedef unsigned char uchar;
	

	class Image{
	private:
		int width;
		int height;
		int th_value;
		uchar* data;


	public:
		Image();
		Image(int w, int h);
		Image(int w, int h, uchar* _data);

		int getWidth() const { return width; }
		int getHeight() const { return height; }
		
		void threshold(); 
    	int getValue(int row, int col);
		void show();
		ListOfRegion regions;

		void getRegions();
        virtual ~Image(); 
		static Image* readImage(std::string &path);        
	};
}
