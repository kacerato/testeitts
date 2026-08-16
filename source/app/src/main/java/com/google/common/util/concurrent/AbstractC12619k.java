package com.google.common.util.concurrent;

import com.google.common.collect.D2;
import com.google.common.util.concurrent.AbstractFuture;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import q3.f;

@A
@q3.f(f.a.FULL)
@v2.b(emulated = true)
public abstract class AbstractC12619k<OutputT> extends AbstractFuture.i<OutputT> {

    public static final b f67479l;

    public static final Logger f67480m = Logger.getLogger(AbstractC12619k.class.getName());

    @CheckForNull
    public volatile Set<Throwable> f67481j = null;

    public volatile int f67482k;

    public static abstract class b {
        public b() {
        }

        public abstract void a(AbstractC12619k<?> abstractC12619k, @CheckForNull Set<Throwable> set, Set<Throwable> set2);

        public abstract int b(AbstractC12619k<?> abstractC12619k);
    }

    public static final class c extends b {

        public final AtomicReferenceFieldUpdater<AbstractC12619k<?>, Set<Throwable>> f67483a;

        public final AtomicIntegerFieldUpdater<AbstractC12619k<?>> f67484b;

        public c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super();
            this.f67483a = atomicReferenceFieldUpdater;
            this.f67484b = atomicIntegerFieldUpdater;
        }

        @Override
        public void a(AbstractC12619k<?> abstractC12619k, @CheckForNull Set<Throwable> set, Set<Throwable> set2) {
            androidx.concurrent.futures.a.a(this.f67483a, abstractC12619k, set, set2);
        }

        @Override
        public int b(AbstractC12619k<?> abstractC12619k) {
            return this.f67484b.decrementAndGet(abstractC12619k);
        }
    }

    public static final class d extends b {
        public d() {
            super();
        }

        @Override
        public void a(AbstractC12619k<?> abstractC12619k, @CheckForNull Set<Throwable> set, Set<Throwable> set2) {
            synchronized (abstractC12619k) {
                try {
                    if (abstractC12619k.f67481j == set) {
                        abstractC12619k.f67481j = set2;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public int b(AbstractC12619k<?> abstractC12619k) {
            int I10;
            synchronized (abstractC12619k) {
                I10 = AbstractC12619k.I(abstractC12619k);
            }
            return I10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        b dVar;
        Throwable th2 = null;
        Object[] objArr = 0;
        try {
            dVar = new c(AtomicReferenceFieldUpdater.newUpdater(AbstractC12619k.class, Set.class, "j"), AtomicIntegerFieldUpdater.newUpdater(AbstractC12619k.class, "k"));
        } catch (Throwable th3) {
            dVar = new d();
            th2 = th3;
        }
        f67479l = dVar;
        if (th2 != null) {
            f67480m.log(Level.SEVERE, "SafeAtomicHelper is broken!", th2);
        }
    }

    public AbstractC12619k(int i10) {
        this.f67482k = i10;
    }

    public static int I(AbstractC12619k abstractC12619k) {
        int i10 = abstractC12619k.f67482k - 1;
        abstractC12619k.f67482k = i10;
        return i10;
    }

    public abstract void J(Set<Throwable> set);

    public final void K() {
        this.f67481j = null;
    }

    public final int L() {
        return f67479l.b(this);
    }

    public final Set<Throwable> M() {
        Set<Throwable> set = this.f67481j;
        if (set != null) {
            return set;
        }
        Set<Throwable> p10 = D2.p();
        J(p10);
        f67479l.a(this, null, p10);
        Set<Throwable> set2 = this.f67481j;
        Objects.requireNonNull(set2);
        return set2;
    }
}
