package java.util.logging;

import java.beans.PropertyChangeListener;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/logging/LogManager.class
 */
public class LogManager {
    public static final String LOGGING_MXBEAN_NAME = "java.util.logging:type=Logging";

    protected LogManager() {
        throw new RuntimeException("Stub!");
    }

    public static LogManager getLogManager() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void addPropertyChangeListener(PropertyChangeListener l10) throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void removePropertyChangeListener(PropertyChangeListener l10) throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    public boolean addLogger(Logger logger) {
        throw new RuntimeException("Stub!");
    }

    public Logger getLogger(String name) {
        throw new RuntimeException("Stub!");
    }

    public Enumeration<String> getLoggerNames() {
        throw new RuntimeException("Stub!");
    }

    public void readConfiguration() throws IOException, SecurityException {
        throw new RuntimeException("Stub!");
    }

    public void reset() throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    public void readConfiguration(InputStream ins) throws IOException, SecurityException {
        throw new RuntimeException("Stub!");
    }

    public String getProperty(String name) {
        throw new RuntimeException("Stub!");
    }

    public void checkAccess() throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    public static synchronized LoggingMXBean getLoggingMXBean() {
        throw new RuntimeException("Stub!");
    }
}
