package java.util.logging;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/logging/Filter.class
 */
@FunctionalInterface
public interface Filter {
    boolean isLoggable(LogRecord logRecord);
}
