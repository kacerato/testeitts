package java.io;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/OptionalDataException.class
 */
public class OptionalDataException extends ObjectStreamException {
    public boolean eof;
    public int length;

    OptionalDataException() {
        throw new RuntimeException("Stub!");
    }
}
