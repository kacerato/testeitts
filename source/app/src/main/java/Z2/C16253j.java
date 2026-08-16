package z2;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;
import w2.H;

@InterfaceC16248e
public class C16253j {

    @q3.i
    public C16249f f130607a;

    @v2.d
    public final Object f130608b;

    public final Method f130609c;

    public final Executor f130610d;

    @v2.d
    public static final class b extends C16253j {
        @Override
        public void e(Object obj) throws InvocationTargetException {
            synchronized (this) {
                super.e(obj);
            }
        }

        public b(C16249f c16249f, Object obj, Method method) {
            super(c16249f, obj, method);
        }
    }

    public static C16253j c(C16249f c16249f, Object obj, Method method) {
        return f(method) ? new C16253j(c16249f, obj, method) : new b(c16249f, obj, method);
    }

    public static boolean f(Method method) {
        return method.getAnnotation(InterfaceC16244a.class) != null;
    }

    public final C16254k b(Object obj) {
        return new C16254k(this.f130607a, obj, this.f130608b, this.f130609c);
    }

    public final void d(final Object obj) {
        this.f130610d.execute(new Runnable() {
            @Override
            public final void run() {
                C16253j.this.g(obj);
            }
        });
    }

    @v2.d
    public void e(Object obj) throws InvocationTargetException {
        try {
            this.f130609c.invoke(this.f130608b, H.E(obj));
        } catch (IllegalAccessException e10) {
            String valueOf = String.valueOf(obj);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 28);
            sb2.append("Method became inaccessible: ");
            sb2.append(valueOf);
            throw new Error(sb2.toString(), e10);
        } catch (IllegalArgumentException e11) {
            String valueOf2 = String.valueOf(obj);
            StringBuilder sb3 = new StringBuilder(valueOf2.length() + 33);
            sb3.append("Method rejected target/argument: ");
            sb3.append(valueOf2);
            throw new Error(sb3.toString(), e11);
        } catch (InvocationTargetException e12) {
            if (!(e12.getCause() instanceof Error)) {
                throw e12;
            }
            throw ((Error) e12.getCause());
        }
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof C16253j)) {
            return false;
        }
        C16253j c16253j = (C16253j) obj;
        return this.f130608b == c16253j.f130608b && this.f130609c.equals(c16253j.f130609c);
    }

    public final void g(Object obj) {
        try {
            e(obj);
        } catch (InvocationTargetException e10) {
            this.f130607a.b(e10.getCause(), b(obj));
        }
    }

    public final int hashCode() {
        return ((this.f130609c.hashCode() + 31) * 31) + System.identityHashCode(this.f130608b);
    }

    public C16253j(C16249f c16249f, Object obj, Method method) {
        this.f130607a = c16249f;
        this.f130608b = H.E(obj);
        this.f130609c = method;
        method.setAccessible(true);
        this.f130610d = c16249f.a();
    }
}
