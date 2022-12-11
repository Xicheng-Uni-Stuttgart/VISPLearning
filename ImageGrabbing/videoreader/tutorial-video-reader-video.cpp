#include <visp3/gui/vpDisplayGDI.h>
#include <visp3/gui/vpDisplayOpenCV.h>
#include <visp3/gui/vpDisplayX.h>
#include <visp3/core/vpTime.h>
#include <visp3/io/vpVideoReader.h>

int main(int argc, char **argv)
{
#if (VISP_HAVE_OPENCV_VERSION >= 0x020100)
   try {
     std::string videoname = "video.mp4";

     for (int i = 0; i < argc; i++) {
       if (std::string(argv[i]) == "--name")
         videoname = std::string(argv[i + 1]);
       else if (std::string(argv[i]) == "--help" || std::string(argv[i]) == "-h") {
         std::cout << "\nUsage: " << argv[0]
                   << " [--name <video name> (default: " << videoname << ")]"
                   << " [--help] [-h]\n" << std::endl;
         return 0;
       }
     }

     vpImage<unsigned char> I;
     vpVideoReader g;
     g.setFileName(videoname);
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
