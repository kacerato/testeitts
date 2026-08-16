package com.google.common.util.concurrent;

import com.google.common.util.concurrent.Y;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicBoolean;
import v2.InterfaceC15800a;

@A
@v2.c
@InterfaceC15800a
public final class Y {

    public static class a<V> extends L<V> implements Z<V> {

        public static final ThreadFactory f67355f;

        public static final Executor f67356g;

        public final Executor f67357b;

        public final B f67358c;

        public final AtomicBoolean f67359d;

        public final Future<V> f67360e;

        static {
            ThreadFactory b10 = new D0().e(true).f("ListenableFutureAdapter-thread-%d").b();
            f67355f = b10;
            f67356g = Executors.newCachedThreadPool(b10);
        }

        public a(Future<V> future) {
            this(future, f67356g);
        }

        @Override
        public void addListener(Runnable runnable, Executor executor) {
            this.f67358c.a(runnable, executor);
            if (this.f67359d.compareAndSet(false, true)) {
                if (this.f67360e.isDone()) {
                    this.f67358c.b();
                } else {
                    this.f67357b.execute(new Runnable() {
                        @Override
                        public final void run() {
                            Y.a.this.p0();
                        }
                    });
                }
            }
        }

        @Override
        public Future<V> k0() {
            return this.f67360e;
        }

        public final void p0() {
            try {
                H0.f(this.f67360e);
            } catch (Throwable unused) {
            }
            this.f67358c.b();
        }

        public a(Future<V> future, Executor executor) {
            this.f67358c = new B();
            this.f67359d = new AtomicBoolean(false);
            this.f67360e = (Future) w2.H.E(future);
            this.f67357b = (Executor) w2.H.E(executor);
        }
    }

    public static <V> Z<V> a(Future<V> future) {
        return future instanceof Z ? (Z) future : new a(future);
    }

    public static <V> Z<V> b(Future<V> future, Executor executor) {
        w2.H.E(executor);
        return future instanceof Z ? (Z) future : new a(future, executor);
    }
}
