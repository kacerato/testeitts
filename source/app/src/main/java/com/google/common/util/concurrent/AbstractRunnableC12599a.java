package com.google.common.util.concurrent;

import com.google.common.util.concurrent.F;
import java.lang.Throwable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;
import w2.InterfaceC15902t;

@A
@v2.b
public abstract class AbstractRunnableC12599a<V, X extends Throwable, F, T> extends F.a<V> implements Runnable {

    @CheckForNull
    public Z<? extends V> f67361j;

    @CheckForNull
    public Class<X> f67362k;

    @CheckForNull
    public F f67363l;

    public static final class C1015a<V, X extends Throwable> extends AbstractRunnableC12599a<V, X, InterfaceC12623m<? super X, ? extends V>, Z<? extends V>> {
        public C1015a(Z<? extends V> z10, Class<X> cls, InterfaceC12623m<? super X, ? extends V> interfaceC12623m) {
            super(z10, cls, interfaceC12623m);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Z<? extends V> Q(InterfaceC12623m<? super X, ? extends V> interfaceC12623m, X x10) throws Exception {
            Z<? extends V> apply = interfaceC12623m.apply(x10);
            w2.H.V(apply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", interfaceC12623m);
            return apply;
        }

        @Override
        public void S(Z<? extends V> z10) {
            E(z10);
        }
    }

    public static final class b<V, X extends Throwable> extends AbstractRunnableC12599a<V, X, InterfaceC15902t<? super X, ? extends V>, V> {
        public b(Z<? extends V> z10, Class<X> cls, InterfaceC15902t<? super X, ? extends V> interfaceC15902t) {
            super(z10, cls, interfaceC15902t);
        }

        @Override
        public void S(@InterfaceC12618j0 V v10) {
            C(v10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        @InterfaceC12618j0
        public V Q(InterfaceC15902t<? super X, ? extends V> interfaceC15902t, X x10) throws Exception {
            return interfaceC15902t.apply(x10);
        }
    }

    public AbstractRunnableC12599a(Z<? extends V> z10, Class<X> cls, F f10) {
        this.f67361j = (Z) w2.H.E(z10);
        this.f67362k = (Class) w2.H.E(cls);
        this.f67363l = (F) w2.H.E(f10);
    }

    public static <X extends Throwable, V> Z<V> O(Z<? extends V> z10, Class<X> cls, InterfaceC12623m<? super X, ? extends V> interfaceC12623m, Executor executor) {
        C1015a c1015a = new C1015a(z10, cls, interfaceC12623m);
        z10.addListener(c1015a, C12612g0.p(executor, c1015a));
        return c1015a;
    }

    public static <V, X extends Throwable> Z<V> P(Z<? extends V> z10, Class<X> cls, InterfaceC15902t<? super X, ? extends V> interfaceC15902t, Executor executor) {
        b bVar = new b(z10, cls, interfaceC15902t);
        z10.addListener(bVar, C12612g0.p(executor, bVar));
        return bVar;
    }

    @InterfaceC12618j0
    @I2.g
    public abstract T Q(F f10, X x10) throws Exception;

    @I2.g
    public abstract void S(@InterfaceC12618j0 T t10);

    @Override
    public final void n() {
        y(this.f67361j);
        this.f67361j = null;
        this.f67362k = null;
        this.f67363l = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008e  */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Class<X extends java.lang.Throwable>, F] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Object obj;
        Z<? extends V> z10 = this.f67361j;
        Class<X> cls = this.f67362k;
        F f10 = this.f67363l;
        if (((f10 == null) || ((z10 == 0) | (cls == null))) || isCancelled()) {
            return;
        }
        ?? r32 = (Class<X>) null;
        this.f67361j = null;
        try {
            th = z10 instanceof G2.a ? G2.b.a((G2.a) z10) : null;
        } catch (ExecutionException e10) {
            Throwable cause = e10.getCause();
            if (cause == null) {
                String valueOf = String.valueOf(z10.getClass());
                String valueOf2 = String.valueOf(e10.getClass());
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 35 + valueOf2.length());
                sb2.append("Future type ");
                sb2.append(valueOf);
                sb2.append(" threw ");
                sb2.append(valueOf2);
                sb2.append(" without a cause");
                cause = new NullPointerException(sb2.toString());
            }
            th = cause;
        } catch (Throwable th2) {
            th = th2;
        }
        if (th == null) {
            obj = Q.h(z10);
            if (th != null) {
                C(C12614h0.a(obj));
                return;
            }
            if (!C12622l0.a(th, cls)) {
                E(z10);
                return;
            }
            try {
                Object Q10 = Q(f10, th);
                this.f67362k = null;
                this.f67363l = null;
                S(Q10);
                return;
            } catch (Throwable th3) {
                try {
                    D(th3);
                    return;
                } finally {
                    this.f67362k = null;
                    this.f67363l = null;
                }
            }
        }
        obj = null;
        if (th != null) {
        }
    }

    @Override
    @CheckForNull
    public String z() {
        String str;
        Z<? extends V> z10 = this.f67361j;
        Class<X> cls = this.f67362k;
        F f10 = this.f67363l;
        String z11 = super.z();
        if (z10 != null) {
            String valueOf = String.valueOf(z10);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 16);
            sb2.append("inputFuture=[");
            sb2.append(valueOf);
            sb2.append("], ");
            str = sb2.toString();
        } else {
            str = "";
        }
        if (cls == null || f10 == null) {
            if (z11 == null) {
                return null;
            }
            String valueOf2 = String.valueOf(str);
            return z11.length() != 0 ? valueOf2.concat(z11) : new String(valueOf2);
        }
        String valueOf3 = String.valueOf(cls);
        String valueOf4 = String.valueOf(f10);
        StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 29 + valueOf3.length() + valueOf4.length());
        sb3.append(str);
        sb3.append("exceptionType=[");
        sb3.append(valueOf3);
        sb3.append("], fallback=[");
        sb3.append(valueOf4);
        sb3.append("]");
        return sb3.toString();
    }
}
