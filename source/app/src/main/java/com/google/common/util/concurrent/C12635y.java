package com.google.common.util.concurrent;

import com.google.common.collect.AbstractC12505c1;
import com.google.common.util.concurrent.AbstractC12617j;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import javax.annotation.CheckForNull;

@A
@v2.b
public final class C12635y<V> extends AbstractC12617j<Object, V> {

    @CheckForNull
    public C12635y<V>.c<?> f67601r;

    public final class a extends C12635y<V>.c<Z<V>> {

        public final InterfaceC12621l<V> f67602g;

        public a(InterfaceC12621l<V> interfaceC12621l, Executor executor) {
            super(executor);
            this.f67602g = (InterfaceC12621l) w2.H.E(interfaceC12621l);
        }

        @Override
        public String f() {
            return this.f67602g.toString();
        }

        @Override
        public Z<V> e() throws Exception {
            return (Z) w2.H.V(this.f67602g.call(), "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.f67602g);
        }

        @Override
        public void j(Z<V> z10) {
            C12635y.this.E(z10);
        }
    }

    public final class b extends C12635y<V>.c<V> {

        public final Callable<V> f67604g;

        public b(Callable<V> callable, Executor executor) {
            super(executor);
            this.f67604g = (Callable) w2.H.E(callable);
        }

        @Override
        @InterfaceC12618j0
        public V e() throws Exception {
            return this.f67604g.call();
        }

        @Override
        public String f() {
            return this.f67604g.toString();
        }

        @Override
        public void j(@InterfaceC12618j0 V v10) {
            C12635y.this.C(v10);
        }
    }

    public abstract class c<T> extends W<T> {

        public final Executor f67606e;

        public c(Executor executor) {
            this.f67606e = (Executor) w2.H.E(executor);
        }

        @Override
        public final void a(Throwable th2) {
            C12635y.this.f67601r = null;
            if (th2 instanceof ExecutionException) {
                C12635y.this.D(((ExecutionException) th2).getCause());
            } else if (th2 instanceof CancellationException) {
                C12635y.this.cancel(false);
            } else {
                C12635y.this.D(th2);
            }
        }

        @Override
        public final void b(@InterfaceC12618j0 T t10) {
            C12635y.this.f67601r = null;
            j(t10);
        }

        @Override
        public final boolean d() {
            return C12635y.this.isDone();
        }

        public final void i() {
            try {
                this.f67606e.execute(this);
            } catch (RejectedExecutionException e10) {
                C12635y.this.D(e10);
            }
        }

        public abstract void j(@InterfaceC12618j0 T t10);
    }

    public C12635y(AbstractC12505c1<? extends Z<?>> abstractC12505c1, boolean z10, Executor executor, InterfaceC12621l<V> interfaceC12621l) {
        super(abstractC12505c1, z10, false);
        this.f67601r = new a(interfaceC12621l, executor);
        W();
    }

    @Override
    public void Q(int i10, @CheckForNull Object obj) {
    }

    @Override
    public void U() {
        C12635y<V>.c<?> cVar = this.f67601r;
        if (cVar != null) {
            cVar.i();
        }
    }

    @Override
    public void b0(AbstractC12617j.a aVar) {
        super.b0(aVar);
        if (aVar == AbstractC12617j.a.OUTPUT_FUTURE_DONE) {
            this.f67601r = null;
        }
    }

    @Override
    public void x() {
        C12635y<V>.c<?> cVar = this.f67601r;
        if (cVar != null) {
            cVar.c();
        }
    }

    public C12635y(AbstractC12505c1<? extends Z<?>> abstractC12505c1, boolean z10, Executor executor, Callable<V> callable) {
        super(abstractC12505c1, z10, false);
        this.f67601r = new b(callable, executor);
        W();
    }
}
