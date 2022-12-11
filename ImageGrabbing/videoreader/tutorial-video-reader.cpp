#include <visp3/gui/vpDisplayGDI.h>
#include <visp3/gui/vpDisplayOpenCV.h>
#include <visp3/gui/vpDisplayX.h>
#include <visp3/core/vpTime.h>
#include <visp3/io/vpVideoReader.h>

//this file can open video or a sequence of images, you can choose the mode to change the input(video or images)

int main(int argc, char **argv)
{
#if (VISP_HAVE_OPENCV_VERSION >= 0x020100)
   try {
     std::string videoname = "video.mp4";
     std::string imagespath = "./I%04d.png";
     int mode = 0;

     for (int i = 0; i < argc; i++) {
       if (std::string(argv[i]) == "--name")
         videoname = std::string(argv[i + 1]);
       else if (std::string(argv[i]) == "--path")
         imagespath = std::string(argv[i + 1]);
       else if (std::string(argv[i]) == "--mode")
         mode = std::atoi(argv[i + 1]);
       else if (std::string(argv[i]) == "--help" || std::string(argv[i]) == "-h") {
         std::cout << "\nUsage: " << argv[0] << "\n"
                   << " [--name <video name> (default: " << videoname << ")]\n"
                   << " [--path <images path> (default: " << imagespath << ")]\n"
                   << " [--mode <0: video | 1: images (default: 0)>]\n"
                   << " [--help] [-h]\n" 
                   << "\nExample to change the video name:\n"
                   << "  " << argv[0] << " --name ../video.mp4\n"
                   << "\nExample to change the images path:\n"
                   << "  " << argv[0] << " --path ../I%04d.png\n"
                   << "\nExample to change the mode to read a sequence of images:\n"
                   << "  " << argv[0] << " --mode 1"
                   << std::endl;
         return 0;
       }
     }

     vpImage<unsigned char> I;
     vpVideoReader g;
     if(mode == 0){
      g.setFileName(videoname);
     }
     else{
      g.setFileName(imagespath);
     }
     g.open(I);
     std::cout << "Video name     : " << videoname << std::endl;
     std::cout << "Video framerate: " << g.getFramerate() << "Hz" << std::endl;
     std::cout << "Video dimension: " << I.getWidth() << " " << I.getHeight() << std::endl;

#ifdef VISP_HAVE_X11
     vpDisplayX d(I);
#elif defined(VISP_HAVE_GDI)
     vpDisplayGDI d(I);
#elif defined(VISP_HAVE_OPENCV)
     vpDisplayOpenCV d(I);
#else
     std::cout << "No image viewer is available..." << std::endl;
#endif
     vpDisplay::setTitle(I, "Video reader");

     unsigned cpt = 1;
     while (!g.end()) {
       double t = vpTime::measureTimeMs();
       g.acquire(I);
       vpDisplay::display(I);
       vpDisplay::displayText(I, 20, 20, "Click to quit", vpColor::red);
       std::stringstream ss;
       ss << "Frame: " << cpt ++;
       vpDisplay::displayText(I, 40, 20, ss.str(), vpColor::red);
       vpDisplay::flush(I);
       if (vpDisplay::getClick(I, false))
         break;
       vpTime::wait(t, 1000. / g.getFramerate());
     }
     std::cout << "End of video was reached" << std::endl;
   } catch (const vpException &e) {
     std::cout << e.getMessage() << std::endl;
   }
#else
   (void)argc;
   (void)argv;
   std::cout << "Install OpenCV and rebuild ViSP to use this example." << std::endl;
#endif
}

