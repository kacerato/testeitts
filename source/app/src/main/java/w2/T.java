package w2;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import javax.annotation.CheckForNull;

@InterfaceC15894k
@v2.b(emulated = true)
public final class T {

    @v2.c
    public static final String f126223a = "sun.misc.JavaLangAccess";

    @v2.d
    @v2.c
    public static final String f126224b = "sun.misc.SharedSecrets";

    @CheckForNull
    @v2.c
    public static final Object f126225c;

    @CheckForNull
    @v2.c
    public static final Method f126226d;

    @CheckForNull
    @v2.c
    public static final Method f126227e;

    public class a extends AbstractList<StackTraceElement> {

        public final Throwable f126228b;

        public a(Throwable th2) {
            this.f126228b = th2;
        }

        @Override
        public StackTraceElement get(int i10) {
            Method method = T.f126226d;
            Objects.requireNonNull(method);
            Object obj = T.f126225c;
            Objects.requireNonNull(obj);
            return (StackTraceElement) T.m(method, obj, this.f126228b, Integer.valueOf(i10));
        }

        @Override
        public int size() {
            Method method = T.f126227e;
            Objects.requireNonNull(method);
            Object obj = T.f126225c;
            Objects.requireNonNull(obj);
            return ((Integer) T.m(method, obj, this.f126228b)).intValue();
        }
    }

    static {
        Object h10 = h();
        f126225c = h10;
        f126226d = h10 == null ? null : g();
        f126227e = h10 != null ? k(h10) : null;
    }

    public static List<Throwable> e(Throwable th2) {
        H.E(th2);
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(th2);
        boolean z10 = false;
        Throwable th3 = th2;
        while (true) {
            th2 = th2.getCause();
            if (th2 == null) {
                return Collections.unmodifiableList(arrayList);
            }
            arrayList.add(th2);
            if (th2 == th3) {
                throw new IllegalArgumentException("Loop in causal chain detected.", th2);
            }
            if (z10) {
                th3 = th3.getCause();
            }
            z10 = !z10;
        }
    }

    @CheckForNull
    @v2.c
    public static <X extends Throwable> X f(Throwable th2, Class<X> cls) {
        try {
            return cls.cast(th2.getCause());
        } catch (ClassCastException e10) {
            e10.initCause(th2);
            throw e10;
        }
    }

    @CheckForNull
    @v2.c
    public static Method g() {
        return i("getStackTraceElement", Throwable.class, Integer.TYPE);
    }

    @CheckForNull
    @v2.c
    public static Object h() {
        try {
            return Class.forName(f126224b, false, null).getMethod("getJavaLangAccess", null).invoke(null, null);
        } catch (ThreadDeath e10) {
            throw e10;
        } catch (Throwable unused) {
            return null;
        }
    }

    @CheckForNull
    @v2.c
    public static Method i(String str, Class<?>... clsArr) throws ThreadDeath {
        try {
            return Class.forName(f126223a, false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e10) {
            throw e10;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Throwable j(Throwable th2) {
        boolean z10 = false;
        Throwable th3 = th2;
        while (true) {
            Throwable cause = th2.getCause();
            if (cause == null) {
                return th2;
            }
            if (cause == th3) {
                throw new IllegalArgumentException("Loop in causal chain detected.", cause);
            }
            if (z10) {
                th3 = th3.getCause();
            }
            z10 = !z10;
            th2 = cause;
        }
    }

    @CheckForNull
    @v2.c
    public static Method k(Object obj) {
        try {
            Method i10 = i("getStackTraceDepth", Throwable.class);
            if (i10 == null) {
                return null;
            }
            i10.invoke(obj, new Throwable());
            return i10;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused) {
            return null;
        }
    }

    @v2.c
    public static String l(Throwable th2) {
        StringWriter stringWriter = new StringWriter();
        th2.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    @v2.c
    public static Object m(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException(e10);
        } catch (InvocationTargetException e11) {
            throw q(e11.getCause());
        }
    }

    @v2.c
    public static List<StackTraceElement> n(Throwable th2) {
        H.E(th2);
        return new a(th2);
    }

    @v2.c
    @Deprecated
    public static List<StackTraceElement> o(Throwable th2) {
        return p() ? n(th2) : Collections.unmodifiableList(Arrays.asList(th2.getStackTrace()));
    }

    @v2.c
    @Deprecated
    public static boolean p() {
        return (f126226d == null || f126227e == null) ? false : true;
    }

    @I2.a
    @v2.c
    @Deprecated
    public static RuntimeException q(Throwable th2) {
        w(th2);
        throw new RuntimeException(th2);
    }

    @v2.c
    @Deprecated
    public static <X extends Throwable> void r(@CheckForNull Throwable th2, Class<X> cls) throws Throwable {
        if (th2 != null) {
            v(th2, cls);
        }
    }

    @v2.c
    @Deprecated
    public static void s(@CheckForNull Throwable th2) {
        if (th2 != null) {
            w(th2);
        }
    }

    @v2.c
    public static <X extends Throwable> void t(@CheckForNull Throwable th2, Class<X> cls) throws Throwable {
        r(th2, cls);
        s(th2);
    }

    @v2.c
    public static <X1 extends Throwable, X2 extends Throwable> void u(@CheckForNull Throwable th2, Class<X1> cls, Class<X2> cls2) throws Throwable, Throwable {
        H.E(cls2);
        r(th2, cls);
        t(th2, cls2);
    }

    @v2.c
    public static <X extends Throwable> void v(Throwable th2, Class<X> cls) throws Throwable {
        H.E(th2);
        if (cls.isInstance(th2)) {
            throw cls.cast(th2);
        }
    }

    public static void w(Throwable th2) {
        H.E(th2);
        if (th2 instanceof RuntimeException) {
            throw ((RuntimeException) th2);
        }
        if (th2 instanceof Error) {
            throw ((Error) th2);
        }
    }
}
