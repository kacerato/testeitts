package com.google.common.util.concurrent;

import com.google.common.util.concurrent.F;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
import javax.annotation.CheckForNull;

@A
@v2.b
public class F0<V> extends F.a<V> implements RunnableFuture<V> {

    @CheckForNull
    public volatile W<?> f67290j;

    public final class a extends W<Z<V>> {

        public final InterfaceC12621l<V> f67291e;

        public a(InterfaceC12621l<V> interfaceC12621l) {
            this.f67291e = (InterfaceC12621l) w2.H.E(interfaceC12621l);
        }

        @Override
        public void a(Throwable th2) {
            F0.this.D(th2);
        }

        @Override
        public final boolean d() {
            return F0.this.isDone();
        }

        @Override
        public String f() {
            return this.f67291e.toString();
        }

        @Override
        public void b(Z<V> z10) {
            F0.this.E(z10);
        }

        @Override
        public Z<V> e() throws Exception {
            return (Z) w2.H.V(this.f67291e.call(), "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.f67291e);
        }
    }

    public final class b extends W<V> {

        public final Callable<V> f67293e;

        public b(Callable<V> callable) {
            this.f67293e = (Callable) w2.H.E(callable);
        }

        @Override
        public void a(Throwable th2) {
            F0.this.D(th2);
        }

        @Override
        public void b(@InterfaceC12618j0 V v10) {
            F0.this.C(v10);
        }

        @Override
        public final boolean d() {
            return F0.this.isDone();
        }

        @Override
        @InterfaceC12618j0
        public V e() throws Exception {
            return this.f67293e.call();
        }

        @Override
        public String f() {
            return this.f67293e.toString();
        }
    }

    public F0(Callable<V> callable) {
        this.f67290j = new b(callable);
    }

    public static <V> F0<V> O(InterfaceC12621l<V> interfaceC12621l) {
        return new F0<>(interfaceC12621l);
    }

    public static <V> F0<V> P(Runnable runnable, @InterfaceC12618j0 V v10) {
        return new F0<>(Executors.callable(runnable, v10));
    }

    public static <V> F0<V> Q(Callable<V> callable) {
        return new F0<>(callable);
    }

    @Override
    public void n() {
        W<?> w10;
        super.n();
        if (F() && (w10 = this.f67290j) != null) {
            w10.c();
        }
        this.f67290j = null;
    }

    @Override
    public void run() {
        W<?> w10 = this.f67290j;
        if (w10 != null) {
            w10.run();
        }
        this.f67290j = null;
    }

    @Override
    @CheckForNull
    public String z() {
        W<?> w10 = this.f67290j;
        if (w10 == null) {
            return super.z();
        }
        String valueOf = String.valueOf(w10);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 7);
        sb2.append("task=[");
        sb2.append(valueOf);
        sb2.append("]");
        return sb2.toString();
    }

    public F0(InterfaceC12621l<V> interfaceC12621l) {
        this.f67290j = new a(interfaceC12621l);
    }
}
