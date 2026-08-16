package com.google.common.util.concurrent;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.util.concurrent.AbstractC12634x;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.C12620k0;
import com.google.common.util.concurrent.V;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@A
@v2.b(emulated = true)
public final class Q extends U {

    public class a implements Runnable {

        public final Future f67303b;

        public a(Future future) {
            this.f67303b = future;
        }

        @Override
        public void run() {
            this.f67303b.cancel(false);
        }
    }

    public class b<O> implements Future<O> {

        public final Future f67304b;

        public final InterfaceC15902t f67305c;

        public b(Future future, InterfaceC15902t interfaceC15902t) {
            this.f67304b = future;
            this.f67305c = interfaceC15902t;
        }

        public final O a(I i10) throws ExecutionException {
            try {
                return (O) this.f67305c.apply(i10);
            } catch (Throwable th2) {
                throw new ExecutionException(th2);
            }
        }

        @Override
        public boolean cancel(boolean z10) {
            return this.f67304b.cancel(z10);
        }

        @Override
        public O get() throws InterruptedException, ExecutionException {
            return a(this.f67304b.get());
        }

        @Override
        public boolean isCancelled() {
            return this.f67304b.isCancelled();
        }

        @Override
        public boolean isDone() {
            return this.f67304b.isDone();
        }

        @Override
        public O get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return a(this.f67304b.get(j10, timeUnit));
        }
    }

    public class c implements Runnable {

        public final g f67306b;

        public final AbstractC12521g1 f67307c;

        public final int f67308d;

        public c(g gVar, AbstractC12521g1 abstractC12521g1, int i10) {
            this.f67306b = gVar;
            this.f67307c = abstractC12521g1;
            this.f67308d = i10;
        }

        @Override
        public void run() {
            this.f67306b.f(this.f67307c, this.f67308d);
        }
    }

    public static final class d<V> implements Runnable {

        public final Future<V> f67309b;

        public final P<? super V> f67310c;

        public d(Future<V> future, P<? super V> p10) {
            this.f67309b = future;
            this.f67310c = p10;
        }

        @Override
        public void run() {
            Throwable a10;
            Future<V> future = this.f67309b;
            if ((future instanceof G2.a) && (a10 = G2.b.a((G2.a) future)) != null) {
                this.f67310c.a(a10);
                return;
            }
            try {
                this.f67310c.b(Q.h(this.f67309b));
            } catch (Error e10) {
                e = e10;
                this.f67310c.a(e);
            } catch (RuntimeException e11) {
                e = e11;
                this.f67310c.a(e);
            } catch (ExecutionException e12) {
                this.f67310c.a(e12.getCause());
            }
        }

        public String toString() {
            return w2.z.c(this).s(this.f67310c).toString();
        }
    }

    @I2.a
    @v2.b
    @InterfaceC15800a
    public static final class e<V> {

        public final boolean f67311a;

        public final AbstractC12521g1<Z<? extends V>> f67312b;

        public class a implements Callable<Void> {

            public final Runnable f67313b;

            public a(e eVar, Runnable runnable) {
                this.f67313b = runnable;
            }

            @Override
            @CheckForNull
            public Void call() throws Exception {
                this.f67313b.run();
                return null;
            }
        }

        public e(boolean z10, AbstractC12521g1 abstractC12521g1, a aVar) {
            this(z10, abstractC12521g1);
        }

        @I2.a
        public <C> Z<C> a(Callable<C> callable, Executor executor) {
            return new C12635y(this.f67312b, this.f67311a, executor, callable);
        }

        public <C> Z<C> b(InterfaceC12621l<C> interfaceC12621l, Executor executor) {
            return new C12635y(this.f67312b, this.f67311a, executor, interfaceC12621l);
        }

        public Z<?> c(Runnable runnable, Executor executor) {
            return a(new a(this, runnable), executor);
        }

        public e(boolean z10, AbstractC12521g1<Z<? extends V>> abstractC12521g1) {
            this.f67311a = z10;
            this.f67312b = abstractC12521g1;
        }
    }

    public static final class f<T> extends AbstractFuture<T> {

        @CheckForNull
        public g<T> f67314j;

        public f(g gVar, a aVar) {
            this(gVar);
        }

        @Override
        public boolean cancel(boolean z10) {
            g<T> gVar = this.f67314j;
            if (!super.cancel(z10)) {
                return false;
            }
            Objects.requireNonNull(gVar);
            gVar.g(z10);
            return true;
        }

        @Override
        public void n() {
            this.f67314j = null;
        }

        @Override
        @CheckForNull
        public String z() {
            g<T> gVar = this.f67314j;
            if (gVar == null) {
                return null;
            }
            int length = gVar.f67318d.length;
            int i10 = gVar.f67317c.get();
            StringBuilder sb2 = new StringBuilder(49);
            sb2.append("inputCount=[");
            sb2.append(length);
            sb2.append("], remaining=[");
            sb2.append(i10);
            sb2.append("]");
            return sb2.toString();
        }

        public f(g<T> gVar) {
            this.f67314j = gVar;
        }
    }

    public static final class g<T> {

        public boolean f67315a;

        public boolean f67316b;

        public final AtomicInteger f67317c;

        public final Z<? extends T>[] f67318d;

        public volatile int f67319e;

        public g(Z[] zArr, a aVar) {
            this(zArr);
        }

        public final void e() {
            if (this.f67317c.decrementAndGet() == 0 && this.f67315a) {
                for (Z<? extends T> z10 : this.f67318d) {
                    if (z10 != null) {
                        z10.cancel(this.f67316b);
                    }
                }
            }
        }

        public final void f(AbstractC12521g1<AbstractFuture<T>> abstractC12521g1, int i10) {
            Z<? extends T> z10 = this.f67318d[i10];
            Objects.requireNonNull(z10);
            Z<? extends T> z11 = z10;
            this.f67318d[i10] = null;
            for (int i11 = this.f67319e; i11 < abstractC12521g1.size(); i11++) {
                if (abstractC12521g1.get(i11).E(z11)) {
                    e();
                    this.f67319e = i11 + 1;
                    return;
                }
            }
            this.f67319e = abstractC12521g1.size();
        }

        public final void g(boolean z10) {
            this.f67315a = true;
            if (!z10) {
                this.f67316b = false;
            }
            e();
        }

        public g(Z<? extends T>[] zArr) {
            this.f67315a = false;
            this.f67316b = true;
            this.f67319e = 0;
            this.f67318d = zArr;
            this.f67317c = new AtomicInteger(zArr.length);
        }
    }

    public static final class h<V> extends AbstractFuture.i<V> implements Runnable {

        @CheckForNull
        public Z<V> f67320j;

        public h(Z<V> z10) {
            this.f67320j = z10;
        }

        @Override
        public void n() {
            this.f67320j = null;
        }

        @Override
        public void run() {
            Z<V> z10 = this.f67320j;
            if (z10 != null) {
                E(z10);
            }
        }

        @Override
        @CheckForNull
        public String z() {
            Z<V> z10 = this.f67320j;
            if (z10 == null) {
                return null;
            }
            String valueOf = String.valueOf(z10);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 11);
            sb2.append("delegate=[");
            sb2.append(valueOf);
            sb2.append("]");
            return sb2.toString();
        }
    }

    @SafeVarargs
    @InterfaceC15800a
    public static <V> e<V> A(Z<? extends V>... zArr) {
        return new e<>(false, AbstractC12521g1.u(zArr), null);
    }

    @InterfaceC15800a
    public static <V> e<V> B(Iterable<? extends Z<? extends V>> iterable) {
        return new e<>(true, AbstractC12521g1.p(iterable), null);
    }

    @SafeVarargs
    @InterfaceC15800a
    public static <V> e<V> C(Z<? extends V>... zArr) {
        return new e<>(true, AbstractC12521g1.u(zArr), null);
    }

    @v2.c
    @InterfaceC15800a
    public static <V> Z<V> D(Z<V> z10, long j10, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return z10.isDone() ? z10 : TimeoutFuture.S(z10, j10, timeUnit, scheduledExecutorService);
    }

    public static void E(Throwable th2) {
        if (!(th2 instanceof Error)) {
            throw new UncheckedExecutionException(th2);
        }
        throw new ExecutionError((Error) th2);
    }

    public static <V> void a(Z<V> z10, P<? super V> p10, Executor executor) {
        w2.H.E(p10);
        z10.addListener(new d(z10, p10), executor);
    }

    @InterfaceC15800a
    public static <V> Z<List<V>> b(Iterable<? extends Z<? extends V>> iterable) {
        return new AbstractC12634x.a(AbstractC12521g1.p(iterable), true);
    }

    @SafeVarargs
    @InterfaceC15800a
    public static <V> Z<List<V>> c(Z<? extends V>... zArr) {
        return new AbstractC12634x.a(AbstractC12521g1.u(zArr), true);
    }

    @C12620k0.a("AVAILABLE but requires exceptionType to be Throwable.class")
    @InterfaceC15800a
    public static <V, X extends Throwable> Z<V> d(Z<? extends V> z10, Class<X> cls, InterfaceC15902t<? super X, ? extends V> interfaceC15902t, Executor executor) {
        return AbstractRunnableC12599a.P(z10, cls, interfaceC15902t, executor);
    }

    @C12620k0.a("AVAILABLE but requires exceptionType to be Throwable.class")
    @InterfaceC15800a
    public static <V, X extends Throwable> Z<V> e(Z<? extends V> z10, Class<X> cls, InterfaceC12623m<? super X, ? extends V> interfaceC12623m, Executor executor) {
        return AbstractRunnableC12599a.O(z10, cls, interfaceC12623m, executor);
    }

    @I2.a
    @InterfaceC12618j0
    @v2.c
    @InterfaceC15800a
    public static <V, X extends Exception> V f(Future<V> future, Class<X> cls) throws Exception {
        return (V) S.d(future, cls);
    }

    @I2.a
    @InterfaceC12618j0
    @v2.c
    @InterfaceC15800a
    public static <V, X extends Exception> V g(Future<V> future, Class<X> cls, long j10, TimeUnit timeUnit) throws Exception {
        return (V) S.e(future, cls, j10, timeUnit);
    }

    @I2.a
    @InterfaceC12618j0
    public static <V> V h(Future<V> future) throws ExecutionException {
        w2.H.x0(future.isDone(), "Future was expected to be done: %s", future);
        return (V) H0.f(future);
    }

    @I2.a
    @InterfaceC12618j0
    public static <V> V i(Future<V> future) {
        w2.H.E(future);
        try {
            return (V) H0.f(future);
        } catch (ExecutionException e10) {
            E(e10.getCause());
            throw new AssertionError();
        }
    }

    public static <T> Z<? extends T>[] j(Iterable<? extends Z<? extends T>> iterable) {
        return (Z[]) (iterable instanceof Collection ? (Collection) iterable : AbstractC12521g1.p(iterable)).toArray(new Z[0]);
    }

    public static <V> Z<V> k() {
        V.a<Object> aVar = V.a.f67349j;
        return aVar != null ? aVar : new V.a();
    }

    public static <V> Z<V> l(Throwable th2) {
        w2.H.E(th2);
        return new V.b(th2);
    }

    public static <V> Z<V> m(@InterfaceC12618j0 V v10) {
        return v10 == null ? (Z<V>) V.f67346c : new V(v10);
    }

    public static Z<Void> n() {
        return V.f67346c;
    }

    public static <T> AbstractC12521g1<Z<T>> o(Iterable<? extends Z<? extends T>> iterable) {
        Z[] j10 = j(iterable);
        a aVar = null;
        g gVar = new g(j10, aVar);
        AbstractC12521g1.a n10 = AbstractC12521g1.n(j10.length);
        for (int i10 = 0; i10 < j10.length; i10++) {
            n10.a(new f(gVar, aVar));
        }
        AbstractC12521g1<Z<T>> e10 = n10.e();
        for (int i11 = 0; i11 < j10.length; i11++) {
            j10[i11].addListener(new c(gVar, e10, i11), C12612g0.c());
        }
        return e10;
    }

    @v2.c
    @InterfaceC15800a
    public static <I, O> Future<O> p(Future<I> future, InterfaceC15902t<? super I, ? extends O> interfaceC15902t) {
        w2.H.E(future);
        w2.H.E(interfaceC15902t);
        return new b(future, interfaceC15902t);
    }

    public static <V> Z<V> q(Z<V> z10) {
        if (z10.isDone()) {
            return z10;
        }
        h hVar = new h(z10);
        z10.addListener(hVar, C12612g0.c());
        return hVar;
    }

    @v2.c
    public static <O> Z<O> r(InterfaceC12621l<O> interfaceC12621l, long j10, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        F0 O10 = F0.O(interfaceC12621l);
        O10.addListener(new a(scheduledExecutorService.schedule(O10, j10, timeUnit)), C12612g0.c());
        return O10;
    }

    public static Z<Void> s(Runnable runnable, Executor executor) {
        F0 P10 = F0.P(runnable, null);
        executor.execute(P10);
        return P10;
    }

    public static <O> Z<O> t(Callable<O> callable, Executor executor) {
        F0 Q10 = F0.Q(callable);
        executor.execute(Q10);
        return Q10;
    }

    public static <O> Z<O> u(InterfaceC12621l<O> interfaceC12621l, Executor executor) {
        F0 O10 = F0.O(interfaceC12621l);
        executor.execute(O10);
        return O10;
    }

    @InterfaceC15800a
    public static <V> Z<List<V>> v(Iterable<? extends Z<? extends V>> iterable) {
        return new AbstractC12634x.a(AbstractC12521g1.p(iterable), false);
    }

    @SafeVarargs
    @InterfaceC15800a
    public static <V> Z<List<V>> w(Z<? extends V>... zArr) {
        return new AbstractC12634x.a(AbstractC12521g1.u(zArr), false);
    }

    @InterfaceC15800a
    public static <I, O> Z<O> x(Z<I> z10, InterfaceC15902t<? super I, ? extends O> interfaceC15902t, Executor executor) {
        return AbstractRunnableC12611g.P(z10, interfaceC15902t, executor);
    }

    @InterfaceC15800a
    public static <I, O> Z<O> y(Z<I> z10, InterfaceC12623m<? super I, ? extends O> interfaceC12623m, Executor executor) {
        return AbstractRunnableC12611g.O(z10, interfaceC12623m, executor);
    }

    @InterfaceC15800a
    public static <V> e<V> z(Iterable<? extends Z<? extends V>> iterable) {
        return new e<>(false, AbstractC12521g1.p(iterable), null);
    }
}
