package a;

import java.lang.constant.ConstantDescs;

public final class C3529b {

    public static final String f31537a = "_COROUTINE";

    public static final StackTraceElement a(Throwable th2, String str) {
        return b(th2, str);
    }

    public static final StackTraceElement b(Throwable th2, String str) {
        StackTraceElement stackTraceElement = th2.getStackTrace()[0];
        return new StackTraceElement(f31537a + '.' + str, ConstantDescs.DEFAULT_NAME, stackTraceElement.getFileName(), stackTraceElement.getLineNumber());
    }

    public static final String c() {
        return f31537a;
    }
}
