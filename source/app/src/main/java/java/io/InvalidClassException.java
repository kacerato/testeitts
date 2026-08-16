package java.io;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/InvalidClassException.class
 */
public class InvalidClassException extends ObjectStreamException {
    public String classname;

    public InvalidClassException(String reason) {
        throw new RuntimeException("Stub!");
    }

    public InvalidClassException(String cname, String reason) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getMessage() {
        throw new RuntimeException("Stub!");
    }
}
