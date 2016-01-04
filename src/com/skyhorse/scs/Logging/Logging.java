package com.skyhorse.scs.Logging;

import org.apache.log4j.Logger;

public class Logging {
	private static final String LOG_FLAG_DEBUG = " ---------- ";
    private static final String LOG_FLAG_WARN = " ^^^^^^^^^^ ";
    private static final String LOG_FLAG_INFO = " ********** ";
    private static final String LOG_FLAG_ERROR = " ########## ";
    private static final String LOG_FLAG_FATAL = " $$$$$$$$$$ ";
    
    // Debug Level
    public static void debug(Logger logger, String message) {
        logger.debug(LOG_FLAG_DEBUG + message + LOG_FLAG_DEBUG);
    }
 
    // Warning Level
    public static void warn(Logger logger, String message) {
        logger.warn(LOG_FLAG_WARN + message + LOG_FLAG_WARN);
    }
 
    // Info Level
    public static void info(Logger logger, String message) {
        logger.info(LOG_FLAG_INFO + message + LOG_FLAG_INFO);
    }
 
    // Error Level
    public static void error(Logger Logger, String message) {
        Logger.error(LOG_FLAG_ERROR + message + LOG_FLAG_ERROR);
    }
 
    // Fatal Level
    public static void fatal(Logger Logger, String message) {
        Logger.fatal(LOG_FLAG_FATAL + message + LOG_FLAG_FATAL);
    }
}
