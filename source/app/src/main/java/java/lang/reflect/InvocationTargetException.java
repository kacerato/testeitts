package java.lang.reflect;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/InvocationTargetException.class
 */
public class InvocationTargetException extends ReflectiveOperationException {
    private static final long serialVersionUID = 4085088731926701167L;
    private final Throwable target;

    protected InvocationTargetException() {
        super((Throwable) null);
        this.target = null;
    }

    public InvocationTargetException(Throwable target) {
        super((Throwable) null);
        this.target = target;
    }

    public InvocationTargetException(Throwable target, String s10) {
        super(s10, null);
        this.target = target;
    }

    public Throwable getTargetException() {
        return this.target;
    }

    @Override
    public Throwable getCause() {
        return this.target;
    }
}
