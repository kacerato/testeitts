package java.util.logging;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/logging/Formatter.class
 */
public abstract class Formatter {
    public abstract String format(LogRecord logRecord);

    public Formatter() {
        throw new RuntimeException("Stub!");
    }

    public String getHead(Handler h10) {
        throw new RuntimeException("Stub!");
    }

    public String getTail(Handler h10) {
        throw new RuntimeException("Stub!");
    }

    public synchronized String formatMessage(LogRecord record) {
        throw new RuntimeException("Stub!");
    }
}
