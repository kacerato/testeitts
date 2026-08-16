package java.util.logging;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/logging/StreamHandler.class
 */
public class StreamHandler extends Handler {
    public StreamHandler() {
        throw new RuntimeException("Stub!");
    }

    public StreamHandler(OutputStream out, Formatter formatter) {
        throw new RuntimeException("Stub!");
    }

    protected synchronized void setOutputStream(OutputStream out) throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void setEncoding(String encoding) throws SecurityException, UnsupportedEncodingException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void publish(LogRecord record) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isLoggable(LogRecord record) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void flush() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void close() throws SecurityException {
        throw new RuntimeException("Stub!");
    }
}
