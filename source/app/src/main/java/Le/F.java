package Le;

import Be.AbstractC2362l;
import Be.EnumC2352b;
import Be.InterfaceC2364n;
import Be.InterfaceC2365o;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class F<T> extends AbstractC2362l<T> {

    public final InterfaceC2365o<T> f11819c;

    public final EnumC2352b f11820d;

    public static class a {

        public static final int[] f11821a;

        static {
            int[] iArr = new int[EnumC2352b.values().length];
            f11821a = iArr;
            try {
                iArr[EnumC2352b.MISSING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11821a[EnumC2352b.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11821a[EnumC2352b.DROP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11821a[EnumC2352b.LATEST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static abstract class b<T> extends AtomicLong implements InterfaceC2364n<T>, hn.d {

        public static final long f11822d = 7326289992464377023L;

        public final hn.c<? super T> f11823b;

        public final Ge.h f11824c = new Ge.h();

        public b(hn.c<? super T> cVar) {
            this.f11823b = cVar;
        }

        @Override
        public void a() {
            b();
        }

        public void b() {
            if (isCancelled()) {
                return;
            }
            try {
                this.f11823b.a();
            } finally {
                this.f11824c.dispose();
            }
        }

        public boolean c(Throwable th2) {
            if (th2 == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (isCancelled()) {
                return false;
            }
            try {
                this.f11823b.onError(th2);
                this.f11824c.dispose();
                return true;
            } catch (Throwable th3) {
                this.f11824c.dispose();
                throw th3;
            }
        }

        @Override
        public final void cancel() {
            this.f11824c.dispose();
            k();
        }

        @Override
        public final void e(Fe.f fVar) {
            g(new Ge.b(fVar));
        }

        @Override
        public boolean f(Throwable th2) {
            return c(th2);
        }

        @Override
        public final void g(De.c cVar) {
            this.f11824c.b(cVar);
        }

        @Override
        public final void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this, j10);
                j();
            }
        }

        @Override
        public final boolean isCancelled() {
            return this.f11824c.d();
        }

        public void j() {
        }

        public void k() {
        }

        @Override
        public final long l() {
            return get();
        }

        @Override
        public final void onError(Throwable th2) {
            if (f(th2)) {
                return;
            }
            Ye.a.Y(th2);
        }

        @Override
        public final InterfaceC2364n<T> serialize() {
            return new i(this);
        }

        @Override
        public String toString() {
            return String.format("%s{%s}", getClass().getSimpleName(), super.toString());
        }
    }

    public static final class c<T> extends b<T> {

        public static final long f11825i = 2427151001689639875L;

        public final Re.c<T> f11826e;

        public Throwable f11827f;

        public volatile boolean f11828g;

        public final AtomicInteger f11829h;

        public c(hn.c<? super T> cVar, int i10) {
            super(cVar);
            this.f11826e = new Re.c<>(i10);
            this.f11829h = new AtomicInteger();
        }

        @Override
        public void a() {
            this.f11828g = true;
            m();
        }

        @Override
        public boolean f(Throwable th2) {
            if (this.f11828g || isCancelled()) {
                return false;
            }
            if (th2 == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.f11827f = th2;
            this.f11828g = true;
            m();
            return true;
        }

        @Override
        public void h(T t10) {
            if (this.f11828g || isCancelled()) {
                return;
            }
            if (t10 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.f11826e.offer(t10);
                m();
            }
        }

        @Override
        public void j() {
            m();
        }

        @Override
        public void k() {
            if (this.f11829h.getAndIncrement() == 0) {
                this.f11826e.clear();
            }
        }

        public void m() {
            if (this.f11829h.getAndIncrement() != 0) {
                return;
            }
            hn.c<? super T> cVar = this.f11823b;
            Re.c<T> cVar2 = this.f11826e;
            int i10 = 1;
            do {
                long j10 = get();
                long j11 = 0;
                while (j11 != j10) {
                    if (isCancelled()) {
                        cVar2.clear();
                        return;
                    }
                    boolean z10 = this.f11828g;
                    T poll = cVar2.poll();
                    boolean z11 = poll == null;
                    if (z10 && z11) {
                        Throwable th2 = this.f11827f;
                        if (th2 != null) {
                            c(th2);
                            return;
                        } else {
                            b();
                            return;
                        }
                    }
                    if (z11) {
                        break;
                    }
                    cVar.h(poll);
                    j11++;
                }
                if (j11 == j10) {
                    if (isCancelled()) {
                        cVar2.clear();
                        return;
                    }
                    boolean z12 = this.f11828g;
                    boolean isEmpty = cVar2.isEmpty();
                    if (z12 && isEmpty) {
                        Throwable th3 = this.f11827f;
                        if (th3 != null) {
                            c(th3);
                            return;
                        } else {
                            b();
                            return;
                        }
                    }
                }
                if (j11 != 0) {
                    io.reactivex.internal.util.d.e(this, j11);
                }
                i10 = this.f11829h.addAndGet(-i10);
            } while (i10 != 0);
        }
    }

    public static final class d<T> extends h<T> {

        public static final long f11830f = 8360058422307496563L;

        public d(hn.c<? super T> cVar) {
            super(cVar);
        }

        @Override
        public void m() {
        }
    }

    public static final class e<T> extends h<T> {

        public static final long f11831f = 338953216916120960L;

        public e(hn.c<? super T> cVar) {
            super(cVar);
        }

        @Override
        public void m() {
            onError(new MissingBackpressureException("create: could not emit value due to lack of requests"));
        }
    }

    public static final class f<T> extends b<T> {

        public static final long f11832i = 4023437720691792495L;

        public final AtomicReference<T> f11833e;

        public Throwable f11834f;

        public volatile boolean f11835g;

        public final AtomicInteger f11836h;

        public f(hn.c<? super T> cVar) {
            super(cVar);
            this.f11833e = new AtomicReference<>();
            this.f11836h = new AtomicInteger();
        }

        @Override
        public void a() {
            this.f11835g = true;
            m();
        }

        @Override
        public boolean f(Throwable th2) {
            if (this.f11835g || isCancelled()) {
                return false;
            }
            if (th2 == null) {
                onError(new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources."));
            }
            this.f11834f = th2;
            this.f11835g = true;
            m();
            return true;
        }

        @Override
        public void h(T t10) {
            if (this.f11835g || isCancelled()) {
                return;
            }
            if (t10 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.f11833e.set(t10);
                m();
            }
        }

        @Override
        public void j() {
            m();
        }

        @Override
        public void k() {
            if (this.f11836h.getAndIncrement() == 0) {
                this.f11833e.lazySet(null);
            }
        }

        public void m() {
            if (this.f11836h.getAndIncrement() != 0) {
                return;
            }
            hn.c<? super T> cVar = this.f11823b;
            AtomicReference<T> atomicReference = this.f11833e;
            int i10 = 1;
            do {
                long j10 = get();
                long j11 = 0;
                while (true) {
                    if (j11 == j10) {
                        break;
                    }
                    if (isCancelled()) {
                        atomicReference.lazySet(null);
                        return;
                    }
                    boolean z10 = this.f11835g;
                    T andSet = atomicReference.getAndSet(null);
                    boolean z11 = andSet == null;
                    if (z10 && z11) {
                        Throwable th2 = this.f11834f;
                        if (th2 != null) {
                            c(th2);
                            return;
                        } else {
                            b();
                            return;
                        }
                    }
                    if (z11) {
                        break;
                    }
                    cVar.h(andSet);
                    j11++;
                }
                if (j11 == j10) {
                    if (isCancelled()) {
                        atomicReference.lazySet(null);
                        return;
                    }
                    boolean z12 = this.f11835g;
                    boolean z13 = atomicReference.get() == null;
                    if (z12 && z13) {
                        Throwable th3 = this.f11834f;
                        if (th3 != null) {
                            c(th3);
                            return;
                        } else {
                            b();
                            return;
                        }
                    }
                }
                if (j11 != 0) {
                    io.reactivex.internal.util.d.e(this, j11);
                }
                i10 = this.f11836h.addAndGet(-i10);
            } while (i10 != 0);
        }
    }

    public static final class g<T> extends b<T> {

        public static final long f11837e = 3776720187248809713L;

        public g(hn.c<? super T> cVar) {
            super(cVar);
        }

        @Override
        public void h(T t10) {
            long j10;
            if (isCancelled()) {
                return;
            }
            if (t10 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            this.f11823b.h(t10);
            do {
                j10 = get();
                if (j10 == 0) {
                    return;
                }
            } while (!compareAndSet(j10, j10 - 1));
        }
    }

    public static abstract class h<T> extends b<T> {

        public static final long f11838e = 4127754106204442833L;

        public h(hn.c<? super T> cVar) {
            super(cVar);
        }

        @Override
        public final void h(T t10) {
            if (isCancelled()) {
                return;
            }
            if (t10 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else if (get() == 0) {
                m();
            } else {
                this.f11823b.h(t10);
                io.reactivex.internal.util.d.e(this, 1L);
            }
        }

        public abstract void m();
    }

    public static final class i<T> extends AtomicInteger implements InterfaceC2364n<T> {

        public static final long f11839f = 4883307006032401862L;

        public final b<T> f11840b;

        public final io.reactivex.internal.util.c f11841c = new io.reactivex.internal.util.c();

        public final Ie.n<T> f11842d = new Re.c(16);

        public volatile boolean f11843e;

        public i(b<T> bVar) {
            this.f11840b = bVar;
        }

        @Override
        public void a() {
            if (this.f11840b.isCancelled() || this.f11843e) {
                return;
            }
            this.f11843e = true;
            b();
        }

        public void b() {
            if (getAndIncrement() == 0) {
                c();
            }
        }

        public void c() {
            b<T> bVar = this.f11840b;
            Ie.n<T> nVar = this.f11842d;
            io.reactivex.internal.util.c cVar = this.f11841c;
            int i10 = 1;
            while (!bVar.isCancelled()) {
                if (cVar.get() != null) {
                    nVar.clear();
                    bVar.onError(cVar.c());
                    return;
                }
                boolean z10 = this.f11843e;
                T poll = nVar.poll();
                boolean z11 = poll == null;
                if (z10 && z11) {
                    bVar.a();
                    return;
                } else if (z11) {
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                } else {
                    bVar.h(poll);
                }
            }
            nVar.clear();
        }

        @Override
        public void e(Fe.f fVar) {
            this.f11840b.e(fVar);
        }

        @Override
        public boolean f(Throwable th2) {
            if (!this.f11840b.isCancelled() && !this.f11843e) {
                if (th2 == null) {
                    th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
                }
                if (this.f11841c.a(th2)) {
                    this.f11843e = true;
                    b();
                    return true;
                }
            }
            return false;
        }

        @Override
        public void g(De.c cVar) {
            this.f11840b.g(cVar);
        }

        @Override
        public void h(T t10) {
            if (this.f11840b.isCancelled() || this.f11843e) {
                return;
            }
            if (t10 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            if (get() == 0 && compareAndSet(0, 1)) {
                this.f11840b.h(t10);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                Ie.n<T> nVar = this.f11842d;
                synchronized (nVar) {
                    nVar.offer(t10);
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            c();
        }

        @Override
        public boolean isCancelled() {
            return this.f11840b.isCancelled();
        }

        @Override
        public long l() {
            return this.f11840b.l();
        }

        @Override
        public void onError(Throwable th2) {
            if (f(th2)) {
                return;
            }
            Ye.a.Y(th2);
        }

        @Override
        public InterfaceC2364n<T> serialize() {
            return this;
        }

        @Override
        public String toString() {
            return this.f11840b.toString();
        }
    }

    public F(InterfaceC2365o<T> interfaceC2365o, EnumC2352b enumC2352b) {
        this.f11819c = interfaceC2365o;
        this.f11820d = enumC2352b;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        int i10 = a.f11821a[this.f11820d.ordinal()];
        b cVar2 = i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? new c(cVar, AbstractC2362l.a0()) : new f(cVar) : new d(cVar) : new e(cVar) : new g(cVar);
        cVar.j(cVar2);
        try {
            this.f11819c.subscribe(cVar2);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            cVar2.onError(th2);
        }
    }
}
