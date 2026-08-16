package com.google.common.util.concurrent;

import com.google.common.util.concurrent.F;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;
import w2.InterfaceC15902t;

@A
@v2.b
public abstract class AbstractRunnableC12611g<I, O, F, T> extends F.a<O> implements Runnable {

    @CheckForNull
    public Z<? extends I> f67449j;

    @CheckForNull
    public F f67450k;

    public static final class a<I, O> extends AbstractRunnableC12611g<I, O, InterfaceC12623m<? super I, ? extends O>, Z<? extends O>> {
        public a(Z<? extends I> z10, InterfaceC12623m<? super I, ? extends O> interfaceC12623m) {
            super(z10, interfaceC12623m);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Z<? extends O> Q(InterfaceC12623m<? super I, ? extends O> interfaceC12623m, @InterfaceC12618j0 I i10) throws Exception {
            Z<? extends O> apply = interfaceC12623m.apply(i10);
            w2.H.V(apply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", interfaceC12623m);
            return apply;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void S(Z<? extends O> z10) {
            E(z10);
        }
    }

    public static final class b<I, O> extends AbstractRunnableC12611g<I, O, InterfaceC15902t<? super I, ? extends O>, O> {
        public b(Z<? extends I> z10, InterfaceC15902t<? super I, ? extends O> interfaceC15902t) {
            super(z10, interfaceC15902t);
        }

        @Override
        public void S(@InterfaceC12618j0 O o10) {
            C(o10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        @InterfaceC12618j0
        public O Q(InterfaceC15902t<? super I, ? extends O> interfaceC15902t, @InterfaceC12618j0 I i10) {
            return interfaceC15902t.apply(i10);
        }
    }

    public AbstractRunnableC12611g(Z<? extends I> z10, F f10) {
        this.f67449j = (Z) w2.H.E(z10);
        this.f67450k = (F) w2.H.E(f10);
    }

    public static <I, O> Z<O> O(Z<I> z10, InterfaceC12623m<? super I, ? extends O> interfaceC12623m, Executor executor) {
        w2.H.E(executor);
        a aVar = new a(z10, interfaceC12623m);
        z10.addListener(aVar, C12612g0.p(executor, aVar));
        return aVar;
    }

    public static <I, O> Z<O> P(Z<I> z10, InterfaceC15902t<? super I, ? extends O> interfaceC15902t, Executor executor) {
        w2.H.E(interfaceC15902t);
        b bVar = new b(z10, interfaceC15902t);
        z10.addListener(bVar, C12612g0.p(executor, bVar));
        return bVar;
    }

    @InterfaceC12618j0
    @I2.g
    public abstract T Q(F f10, @InterfaceC12618j0 I i10) throws Exception;

    @I2.g
    public abstract void S(@InterfaceC12618j0 T t10);

    @Override
    public final void n() {
        y(this.f67449j);
        this.f67449j = null;
        this.f67450k = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void run() {
        Z<? extends I> z10 = this.f67449j;
        F f10 = this.f67450k;
        if ((isCancelled() | (z10 == null)) || (f10 == null)) {
            return;
        }
        this.f67449j = null;
        if (z10.isCancelled()) {
            E(z10);
            return;
        }
        try {
            try {
                Object Q10 = Q(f10, Q.h(z10));
                this.f67450k = null;
                S(Q10);
            } catch (Throwable th2) {
                try {
                    D(th2);
                } finally {
                    this.f67450k = null;
                }
            }
        } catch (Error e10) {
            D(e10);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e11) {
            D(e11);
        } catch (ExecutionException e12) {
            D(e12.getCause());
        }
    }

    @Override
    @CheckForNull
    public String z() {
        String str;
        Z<? extends I> z10 = this.f67449j;
        F f10 = this.f67450k;
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
        if (f10 == null) {
            if (z11 == null) {
                return null;
            }
            String valueOf2 = String.valueOf(str);
            return z11.length() != 0 ? valueOf2.concat(z11) : new String(valueOf2);
        }
        String valueOf3 = String.valueOf(f10);
        StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 11 + valueOf3.length());
        sb3.append(str);
        sb3.append("function=[");
        sb3.append(valueOf3);
        sb3.append("]");
        return sb3.toString();
    }
}
