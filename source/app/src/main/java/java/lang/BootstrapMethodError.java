package java.lang;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/BootstrapMethodError.class
 */
public class BootstrapMethodError extends LinkageError {
    private static final long serialVersionUID = 292;

    public BootstrapMethodError() {
    }

    public BootstrapMethodError(String s10) {
        super(s10);
    }

    public BootstrapMethodError(String s10, Throwable cause) {
        super(s10, cause);
    }

    public BootstrapMethodError(Throwable cause) {
        super(cause == null ? null : cause.toString());
        initCause(cause);
    }
}
