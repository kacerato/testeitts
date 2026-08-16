package java.lang;

import jdk.internal.event.ThrowableTracer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Error.class
 */
public class Error extends Throwable {
    static final long serialVersionUID = 4980196508277280342L;

    public Error() {
        if (Throwable.jfrTracing) {
            ThrowableTracer.traceError(getClass(), (String) null);
        }
    }

    public Error(String message) {
        super(message);
        if (Throwable.jfrTracing) {
            ThrowableTracer.traceError(getClass(), message);
        }
    }

    public Error(String message, Throwable cause) {
        super(message, cause);
        if (Throwable.jfrTracing) {
            ThrowableTracer.traceError(getClass(), message);
        }
    }

    public Error(Throwable cause) {
        super(cause);
        if (Throwable.jfrTracing) {
            ThrowableTracer.traceError(getClass(), (String) null);
        }
    }

    protected Error(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
        if (Throwable.jfrTracing) {
            ThrowableTracer.traceError(getClass(), message);
        }
    }
}
