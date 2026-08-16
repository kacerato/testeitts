package java.lang;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/SecurityException.class
 */
public class SecurityException extends RuntimeException {
    private static final long serialVersionUID = 6878364983674394167L;

    public SecurityException() {
    }

    public SecurityException(String s10) {
        super(s10);
    }

    public SecurityException(String message, Throwable cause) {
        super(message, cause);
    }

    public SecurityException(Throwable cause) {
        super(cause);
    }
}
