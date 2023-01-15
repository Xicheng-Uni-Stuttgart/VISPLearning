#include <visp3/core/vpImageConvert.h>
#include <visp3/gui/vpDisplayOpenCV.h>
#include <visp3/io/vpVideoReader.h>
#include <visp3/klt/vpKltOpencv.h>
int main(int argc, const char *argv[])
{
#ifdef VISP_HAVE_OPENCV
  try {
    std::string opt_videoname = "video-postcard.mp4";
    bool opt_init_by_click = false;
    unsigned int opt_subsample = 1;
    for (int i = 0; i < argc; i++) {
      if (std::string(argv[i]) == "--videoname")
        opt_videoname = std::string(argv[i + 1]);
      else if (std::string(argv[i]) == "--init-by-click")
        opt_init_by_click = true;
      else if (std::string(argv[i]) == "--subsample")
        opt_subsample = static_cast<unsigned int>(std::atoi(argv[i + 1]));
      else if (std::string(argv[i]) == "--help" || std::string(argv[i]) == "-h") {
        std::cout << "Usage: " << argv[0]
                  << " [--videoname <video name>] [--subsample <scale factor>] [--init-by-click]"
                  << " [--help] [-h]" << std::endl;
        return 0;
      }
    }
    vpVideoReader reader;
    reader.setFileName(opt_videoname);
    vpImage<unsigned char> I, Iacq;
    reader.acquire(Iacq);
    Iacq.subsample(opt_subsample, opt_subsample, I);
#if (VISP_HAVE_OPENCV_VERSION < 0x020408)
    IplImage *cvI = NULL;
#else
    cv::Mat cvI;
#endif
    vpImageConvert::convert(I, cvI);
    vpDisplayOpenCV d(I, 0, 0, "Klt tracking");
    vpDisplay::display(I);
    vpDisplay::flush(I);
    vpKltOpencv tracker;
    tracker.setMaxFeatures(200);
    tracker.setWindowSize(10);
    tracker.setQuality(0.01);
    tracker.setMinDistance(15);
    tracker.setHarrisFreeParameter(0.04);
    tracker.setBlockSize(9);
    tracker.setUseHarris(1);
    tracker.setPyramidLevels(3);
    // Initialise the tracking
    if (opt_init_by_click) {
      vpMouseButton::vpMouseButtonType button = vpMouseButton::button1;
#if (VISP_HAVE_OPENCV_VERSION < 0x020408)
      std::vector<CvPoint2D32f> feature;
#else
      std::vector<cv::Point2f> feature;
#endif
      vpImagePoint ip;
      do {
        vpDisplay::displayText(I, 10, 10, "Left click to select a point, right to start tracking", vpColor::red);
        if (vpDisplay::getClick(I, ip, button, false)) {
          if (button == vpMouseButton::button1) {
            feature.push_back(cv::Point2f((float)ip.get_u(), (float)ip.get_v()));
            vpDisplay::displayCross(I, ip, 12, vpColor::green);
          }
        }
        vpDisplay::flush(I);
        vpTime::wait(20);
      } while (button != vpMouseButton::button3);
#if (VISP_HAVE_OPENCV_VERSION < 0x020408)
      tracker.initTracking(cvI, &feature[0], feature.size());
#else
      tracker.initTracking(cvI, feature);
#endif
    } else {
      tracker.initTracking(cvI);
    }
    std::cout << "Tracker initialized with " << tracker.getNbFeatures() << " features" << std::endl;
    while (!reader.end()) {
      double t = vpTime::measureTimeMs();
      reader.acquire(Iacq);
      Iacq.subsample(opt_subsample, opt_subsample, I);
      vpDisplay::display(I);
      vpImageConvert::convert(I, cvI);
      if (opt_init_by_click && reader.getFrameIndex() == reader.getFirstFrameIndex() + 20) {
        vpMouseButton::vpMouseButtonType button = vpMouseButton::button1;
#if (VISP_HAVE_OPENCV_VERSION < 0x020408)
        std::vector<CvPoint2D32f> feature;
#else
        std::vector<cv::Point2f> feature;
#endif
        vpImagePoint ip;
        do {
          vpDisplay::displayText(I, 10, 10, "Left click to select a point, right to start tracking", vpColor::red);
          if (vpDisplay::getClick(I, ip, button, false)) {
            if (button == vpMouseButton::button1) {
              feature.push_back(cv::Point2f((float)ip.get_u(), (float)ip.get_v()));
              vpDisplay::displayCross(I, ip, 12, vpColor::green);
            }
          }
          vpDisplay::flush(I);
          vpTime::wait(20);
        } while (button != vpMouseButton::button3);
#if (VISP_HAVE_OPENCV_VERSION < 0x020408)
        tracker.initTracking(cvI, &feature[0], feature.size());
#else
        tracker.initTracking(cvI, feature);
#endif
      }
      tracker.track(cvI);
      tracker.display(I, vpColor::red);
      vpDisplay::displayText(I, 10, 10, "Click to quit", vpColor::red);
      if (vpDisplay::getClick(I, false))
        break;
      vpDisplay::flush(I);
      if (! reader.isVideoFormat()) {
        vpTime::wait(t, 40);
      }
    }
    vpDisplay::getClick(I);
#if (VISP_HAVE_OPENCV_VERSION < 0x020408)
    cvReleaseImage(&cvI);
#endif
    return 0;
  } catch (const vpException &e) {
    std::cout << "Catch an exception: " << e << std::endl;
  }
#else
  (void)argc;
  (void)argv;
#endif
}
