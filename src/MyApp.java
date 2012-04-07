  import org.apache.log4j.Logger;
  import org.apache.log4j.PropertyConfigurator;
  public class MyApp {
    static Logger logger = Logger.getLogger(MyApp.class.getName());
    public static void main(String[] args) {
      // BasicConfigurator replaced with PropertyConfigurator.
      logger.info("Entering application.");
      System.out.println("@@@@");
      logger.info("Exiting application.");
    }
  }