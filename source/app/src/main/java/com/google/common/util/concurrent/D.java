package com.google.common.util.concurrent;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.CheckForNull;

@A
public final class D {

    public final AtomicReference<Z<Void>> f67267a = new AtomicReference<>(Q.n());

    public e f67268b = new e(null);

    public class a<T> implements InterfaceC12621l<T> {

        public final Callable f67269a;

        public a(D d10, Callable callable) {
            this.f67269a = callable;
        }

        @Override
        public Z<T> call() throws Exception {
            return Q.m(this.f67269a.call());
        }

        public String toString() {
            return this.f67269a.toString();
        }
    }

    public class b<T> implements InterfaceC12621l<T> {

        public final d f67270a;

        public final InterfaceC12621l f67271b;

        public b(D d10, d dVar, InterfaceC12621l interfaceC12621l) {
            this.f67270a = dVar;
            this.f67271b = interfaceC12621l;
        }

        @Override
        public Z<T> call() throws Exception {
            return !this.f67270a.d() ? Q.k() : this.f67271b.call();
        }

        public String toString() {
            return this.f67271b.toString();
        }
    }

    public enum c {
        NOT_RUN,
        CANCELLED,
        STARTED
    }

    public static final class d extends AtomicReference<c> implements Executor, Runnable {

        @CheckForNull
        public D f67272b;

        @CheckForNull
        public Executor f67273c;

        @CheckForNull
        public Runnable f67274d;

        @CheckForNull
        public Thread f67275e;

        public d(Executor executor, D d10, a aVar) {
            this(executor, d10);
        }

        public final boolean c() {
            return compareAndSet(c.NOT_RUN, c.CANCELLED);
        }

        public final boolean d() {
            return compareAndSet(c.NOT_RUN, c.STARTED);
        }

        @Override
        public void execute(Runnable runnable) {
            if (get() == c.CANCELLED) {
                this.f67273c = null;
                this.f67272b = null;
                return;
            }
            this.f67275e = Thread.currentThread();
            try {
                D d10 = this.f67272b;
                Objects.requireNonNull(d10);
                e eVar = d10.f67268b;
                if (eVar.f67276a == this.f67275e) {
                    this.f67272b = null;
                    w2.H.g0(eVar.f67277b == null);
                    eVar.f67277b = runnable;
                    Executor executor = this.f67273c;
                    Objects.requireNonNull(executor);
                    eVar.f67278c = executor;
                    this.f67273c = null;
                } else {
                    Executor executor2 = this.f67273c;
                    Objects.requireNonNull(executor2);
                    this.f67273c = null;
                    this.f67274d = runnable;
                    executor2.execute(this);
                }
                this.f67275e = null;
            } catch (Throwable th2) {
                this.f67275e = null;
                throw th2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void run() {
            Executor executor;
            Thread currentThread = Thread.currentThread();
            Thread thread = null;
            Object[] objArr = 0;
            if (currentThread != this.f67275e) {
                Runnable runnable = this.f67274d;
                Objects.requireNonNull(runnable);
                this.f67274d = null;
                runnable.run();
                return;
            }
            e eVar = new e(objArr == true ? 1 : 0);
            eVar.f67276a = currentThread;
            D d10 = this.f67272b;
            Objects.requireNonNull(d10);
            d10.f67268b = eVar;
            this.f67272b = null;
            try {
                Runnable runnable2 = this.f67274d;
                Objects.requireNonNull(runnable2);
                this.f67274d = null;
                runnable2.run();
                while (true) {
                    Runnable runnable3 = eVar.f67277b;
                    if (runnable3 == null || (executor = eVar.f67278c) == null) {
                        break;
                    }
                    eVar.f67277b = null;
                    eVar.f67278c = null;
                    executor.execute(runnable3);
                }
            } finally {
                eVar.f67276a = null;
            }
        }

        public d(Executor executor, D d10) {
            super(c.NOT_RUN);
            this.f67273c = executor;
            this.f67272b = d10;
        }
    }

    public static final class e {

        @CheckForNull
        public Thread f67276a;

        @CheckForNull
        public Runnable f67277b;

        @CheckForNull
        public Executor f67278c;

        public e() {
        }

        public e(a aVar) {
            this();
        }
    }

    public static D d() {
        return new D();
    }

    public static void e(F0 f02, r0 r0Var, Z z10, Z z11, d dVar) {
        if (f02.isDone()) {
            r0Var.E(z10);
        } else if (z11.isCancelled() && dVar.c()) {
            f02.cancel(false);
        }
    }

    public <T> Z<T> f(Callable<T> callable, Executor executor) {
        w2.H.E(callable);
        w2.H.E(executor);
        return g(new a(this, callable), executor);
    }

    public <T> Z<T> g(InterfaceC12621l<T> interfaceC12621l, Executor executor) {
        w2.H.E(interfaceC12621l);
        w2.H.E(executor);
        final d dVar = new d(executor, this, null);
        b bVar = new b(this, dVar, interfaceC12621l);
        final r0 G10 = r0.G();
        final Z<Void> andSet = this.f67267a.getAndSet(G10);
        final F0 O10 = F0.O(bVar);
        andSet.addListener(O10, dVar);
        final Z<T> q10 = Q.q(O10);
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                D.e(F0.this, G10, andSet, q10, dVar);
            }
        };
        q10.addListener(runnable, C12612g0.c());
        O10.addListener(runnable, C12612g0.c());
        return q10;
    }
}
