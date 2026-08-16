package java.util.logging;

import java.io.UnsupportedEncodingException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/logging/Handler.class
 */
public abstract class Handler {
    public abstract void publish(LogRecord logRecord);

    public abstract void flush();

    public abstract void close() throws SecurityException;

    public Handler() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setFormatter(Formatter newFormatter) throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    public Formatter getFormatter() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setEncoding(String encoding) throws SecurityException, UnsupportedEncodingException {
        throw new RuntimeException("Stub!");
    }

    public String getEncoding() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setFilter(Filter newFilter) throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    public Filter getFilter() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setErrorManager(ErrorManager em2) {
        throw new RuntimeException("Stub!");
    }

    public ErrorManager getErrorManager() {
        throw new RuntimeException("Stub!");
    }

    protected void reportError(String msg, Exception ex, int code) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setLevel(Level newLevel) throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    public Level getLevel() {
        throw new RuntimeException("Stub!");
    }

    public boolean isLoggable(LogRecord record) {
        throw new RuntimeException("Stub!");
    }
}
