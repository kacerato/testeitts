package com.google.common.util.concurrent;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.M1;
import com.google.common.collect.O1;
import com.google.common.util.concurrent.B0;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import v2.InterfaceC15800a;

@A
@v2.c
@InterfaceC15800a
public abstract class B0<L> {

    public static final int f67222a = 1024;

    public static final int f67223b = -1;

    public static class b<L> extends f<L> {

        public final Object[] f67224d;

        @Override
        public L j(int i10) {
            return (L) this.f67224d[i10];
        }

        @Override
        public int v() {
            return this.f67224d.length;
        }

        public b(int i10, w2.Q<L> q10) {
            super(i10);
            int i11 = 0;
            w2.H.e(i10 <= 1073741824, "Stripes must be <= 2^30)");
            this.f67224d = new Object[this.f67234c + 1];
            while (true) {
                Object[] objArr = this.f67224d;
                if (i11 >= objArr.length) {
                    return;
                }
                objArr[i11] = q10.get();
                i11++;
            }
        }
    }

    @v2.d
    public static class c<L> extends f<L> {

        public final ConcurrentMap<Integer, L> f67225d;

        public final w2.Q<L> f67226e;

        public final int f67227f;

        public c(int i10, w2.Q<L> q10) {
            super(i10);
            int i11 = this.f67234c;
            this.f67227f = i11 == -1 ? Integer.MAX_VALUE : i11 + 1;
            this.f67226e = q10;
            this.f67225d = new O1().m().i();
        }

        @Override
        public L j(int i10) {
            if (this.f67227f != Integer.MAX_VALUE) {
                w2.H.C(i10, v());
            }
            L l10 = this.f67225d.get(Integer.valueOf(i10));
            if (l10 != null) {
                return l10;
            }
            L l11 = this.f67226e.get();
            return (L) w2.z.a(this.f67225d.putIfAbsent(Integer.valueOf(i10), l11), l11);
        }

        @Override
        public int v() {
            return this.f67227f;
        }
    }

    public static class d extends ReentrantLock {

        public long f67228b;

        public long f67229c;

        public long f67230d;

        public d() {
            super(false);
        }
    }

    public static class e extends Semaphore {

        public long f67231b;

        public long f67232c;

        public long f67233d;

        public e(int i10) {
            super(i10, false);
        }
    }

    public static abstract class f<L> extends B0<L> {

        public final int f67234c;

        public f(int i10) {
            super();
            w2.H.e(i10 > 0, "Stripes must be positive");
            this.f67234c = i10 > 1073741824 ? -1 : B0.g(i10) - 1;
        }

        @Override
        public final L i(Object obj) {
            return j(k(obj));
        }

        @Override
        public final int k(Object obj) {
            return B0.w(obj.hashCode()) & this.f67234c;
        }
    }

    @v2.d
    public static class g<L> extends f<L> {

        public final AtomicReferenceArray<a<? extends L>> f67235d;

        public final w2.Q<L> f67236e;

        public final int f67237f;

        public final ReferenceQueue<L> f67238g;

        public static final class a<L> extends WeakReference<L> {

            public final int f67239a;

            public a(L l10, int i10, ReferenceQueue<L> referenceQueue) {
                super(l10, referenceQueue);
                this.f67239a = i10;
            }
        }

        public g(int i10, w2.Q<L> q10) {
            super(i10);
            this.f67238g = new ReferenceQueue<>();
            int i11 = this.f67234c;
            int i12 = i11 == -1 ? Integer.MAX_VALUE : i11 + 1;
            this.f67237f = i12;
            this.f67235d = new AtomicReferenceArray<>(i12);
            this.f67236e = q10;
        }

        @Override
        public L j(int i10) {
            if (this.f67237f != Integer.MAX_VALUE) {
                w2.H.C(i10, v());
            }
            a<? extends L> aVar = this.f67235d.get(i10);
            L l10 = aVar == null ? null : aVar.get();
            if (l10 != null) {
                return l10;
            }
            L l11 = this.f67236e.get();
            a aVar2 = new a(l11, i10, this.f67238g);
            while (!C0.a(this.f67235d, i10, aVar, aVar2)) {
                aVar = this.f67235d.get(i10);
                L l12 = aVar == null ? null : aVar.get();
                if (l12 != null) {
                    return l12;
                }
            }
            x();
            return l11;
        }

        @Override
        public int v() {
            return this.f67237f;
        }

        public final void x() {
            while (true) {
                Reference<? extends L> poll = this.f67238g.poll();
                if (poll == null) {
                    return;
                }
                a aVar = (a) poll;
                C0.a(this.f67235d, aVar.f67239a, aVar, null);
            }
        }
    }

    public static final class h extends I {

        public final Condition f67240a;

        public final j f67241b;

        public h(Condition condition, j jVar) {
            this.f67240a = condition;
            this.f67241b = jVar;
        }

        @Override
        public Condition a() {
            return this.f67240a;
        }
    }

    public static final class i extends O {

        public final Lock f67242b;

        public final j f67243c;

        public i(Lock lock, j jVar) {
            this.f67242b = lock;
            this.f67243c = jVar;
        }

        @Override
        public Lock a() {
            return this.f67242b;
        }

        @Override
        public Condition newCondition() {
            return new h(this.f67242b.newCondition(), this.f67243c);
        }
    }

    public static final class j implements ReadWriteLock {

        public final ReadWriteLock f67244b = new ReentrantReadWriteLock();

        @Override
        public Lock readLock() {
            return new i(this.f67244b.readLock(), this);
        }

        @Override
        public Lock writeLock() {
            return new i(this.f67244b.writeLock(), this);
        }
    }

    public static int g(int i10) {
        return 1 << E2.f.p(i10, RoundingMode.CEILING);
    }

    public static <L> B0<L> h(int i10, w2.Q<L> q10) {
        return new b(i10, q10);
    }

    public static Lock l() {
        return new ReentrantLock(false);
    }

    public static Semaphore m(int i10) {
        return new Semaphore(i10, false);
    }

    public static Semaphore n(int i10) {
        return new e(i10);
    }

    public static <L> B0<L> o(int i10, w2.Q<L> q10) {
        return i10 < 1024 ? new g(i10, q10) : new c(i10, q10);
    }

    public static B0<Lock> p(int i10) {
        return o(i10, new w2.Q() {
            @Override
            public final Object get() {
                Lock l10;
                l10 = B0.l();
                return l10;
            }
        });
    }

    public static B0<ReadWriteLock> q(int i10) {
        return o(i10, new w2.Q() {
            @Override
            public final Object get() {
                return new B0.j();
            }
        });
    }

    public static B0<Semaphore> r(int i10, final int i11) {
        return o(i10, new w2.Q() {
            @Override
            public final Object get() {
                Semaphore m10;
                m10 = B0.m(i11);
                return m10;
            }
        });
    }

    public static B0<Lock> s(int i10) {
        return h(i10, new w2.Q() {
            @Override
            public final Object get() {
                return new B0.d();
            }
        });
    }

    public static B0<ReadWriteLock> t(int i10) {
        return h(i10, new w2.Q() {
            @Override
            public final Object get() {
                return new ReentrantReadWriteLock();
            }
        });
    }

    public static B0<Semaphore> u(int i10, final int i11) {
        return h(i10, new w2.Q() {
            @Override
            public final Object get() {
                Semaphore n10;
                n10 = B0.n(i11);
                return n10;
            }
        });
    }

    public static int w(int i10) {
        int i11 = i10 ^ ((i10 >>> 20) ^ (i10 >>> 12));
        return (i11 >>> 4) ^ ((i11 >>> 7) ^ i11);
    }

    public Iterable<L> f(Iterable<? extends Object> iterable) {
        ArrayList r10 = M1.r(iterable);
        if (r10.isEmpty()) {
            return AbstractC12521g1.x();
        }
        int[] iArr = new int[r10.size()];
        for (int i10 = 0; i10 < r10.size(); i10++) {
            iArr[i10] = k(r10.get(i10));
        }
        Arrays.sort(iArr);
        int i11 = iArr[0];
        r10.set(0, j(i11));
        for (int i12 = 1; i12 < r10.size(); i12++) {
            int i13 = iArr[i12];
            if (i13 == i11) {
                r10.set(i12, r10.get(i12 - 1));
            } else {
                r10.set(i12, j(i13));
                i11 = i13;
            }
        }
        return Collections.unmodifiableList(r10);
    }

    public abstract L i(Object obj);

    public abstract L j(int i10);

    public abstract int k(Object obj);

    public abstract int v();

    public B0() {
    }
}
