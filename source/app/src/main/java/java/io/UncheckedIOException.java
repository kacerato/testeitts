package java.io;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/UncheckedIOException.class
 */
public class UncheckedIOException extends RuntimeException {
    public UncheckedIOException(String message, IOException cause) {
        throw new RuntimeException("Stub!");
    }

    public UncheckedIOException(IOException cause) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IOException getCause() {
        throw new RuntimeException("Stub!");
    }
}
