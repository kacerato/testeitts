package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class I0<T> extends AbstractC2692a<T, T> {

    public final Be.Q<? extends T> f11923d;

    public static final class a<T> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f11924p = -4592979584110982903L;

        public static final int f11925q = 1;

        public static final int f11926r = 2;

        public final hn.c<? super T> f11927b;

        public final AtomicReference<hn.d> f11928c = new AtomicReference<>();

        public final C0387a<T> f11929d = new C0387a<>(this);

        public final io.reactivex.internal.util.c f11930e = new io.reactivex.internal.util.c();

        public final AtomicLong f11931f = new AtomicLong();

        public final int f11932g;

        public final int f11933h;

        public volatile Ie.n<T> f11934i;

        public T f11935j;

        public volatile boolean f11936k;

        public volatile boolean f11937l;

        public volatile int f11938m;

        public long f11939n;

        public int f11940o;

        public static final class C0387a<T> extends AtomicReference<De.c> implements Be.N<T> {

            public static final long f11941c = -2935427570954647017L;

            public final a<T> f11942b;

            public C0387a(a<T> aVar) {
                this.f11942b = aVar;
            }

            @Override
            public void b(T t10) {
                this.f11942b.f(t10);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f11942b.e(th2);
            }
        }

        public a(hn.c<? super T> cVar) {
            this.f11927b = cVar;
            int a02 = AbstractC2362l.a0();
            this.f11932g = a02;
            this.f11933h = a02 - (a02 >> 2);
        }

        @Override
        public void a() {
            this.f11937l = true;
            b();
        }

        public void b() {
            if (getAndIncrement() == 0) {
                c();
            }
        }

        public void c() {
            hn.c<? super T> cVar = this.f11927b;
            long j10 = this.f11939n;
            int i10 = this.f11940o;
            int i11 = this.f11933h;
            int i12 = 1;
            int i13 = 1;
            while (true) {
                long j11 = this.f11931f.get();
                while (j10 != j11) {
                    if (this.f11936k) {
                        this.f11935j = null;
                        this.f11934i = null;
                        return;
                    }
                    if (this.f11930e.get() != null) {
                        this.f11935j = null;
                        this.f11934i = null;
                        cVar.onError(this.f11930e.c());
                        return;
                    }
                    int i14 = this.f11938m;
                    if (i14 == i12) {
                        T t10 = this.f11935j;
                        this.f11935j = null;
                        this.f11938m = 2;
                        cVar.h(t10);
                        j10++;
                    } else {
                        boolean z10 = this.f11937l;
                        Ie.n<T> nVar = this.f11934i;
                        A0.a poll = nVar != null ? nVar.poll() : null;
                        boolean z11 = poll == null;
                        if (z10 && z11 && i14 == 2) {
                            this.f11934i = null;
                            cVar.a();
                            return;
                        } else {
                            if (z11) {
                                break;
                            }
                            cVar.h(poll);
                            j10++;
                            i10++;
                            if (i10 == i11) {
                                this.f11928c.get().i(i11);
                                i10 = 0;
                            }
                            i12 = 1;
                        }
                    }
                }
                if (j10 == j11) {
                    if (this.f11936k) {
                        this.f11935j = null;
                        this.f11934i = null;
                        return;
                    }
                    if (this.f11930e.get() != null) {
                        this.f11935j = null;
                        this.f11934i = null;
                        cVar.onError(this.f11930e.c());
                        return;
                    }
                    boolean z12 = this.f11937l;
                    Ie.n<T> nVar2 = this.f11934i;
                    boolean z13 = nVar2 == null || nVar2.isEmpty();
                    if (z12 && z13 && this.f11938m == 2) {
                        this.f11934i = null;
                        cVar.a();
                        return;
                    }
                }
                this.f11939n = j10;
                this.f11940o = i10;
                i13 = addAndGet(-i13);
                if (i13 == 0) {
                    return;
                } else {
                    i12 = 1;
                }
            }
        }

        @Override
        public void cancel() {
            this.f11936k = true;
            Ue.j.a(this.f11928c);
            Ge.d.a(this.f11929d);
            if (getAndIncrement() == 0) {
                this.f11934i = null;
                this.f11935j = null;
            }
        }

        public Ie.n<T> d() {
            Ie.n<T> nVar = this.f11934i;
            if (nVar != null) {
                return nVar;
            }
            Re.b bVar = new Re.b(AbstractC2362l.a0());
            this.f11934i = bVar;
            return bVar;
        }

        public void e(Throwable th2) {
            if (!this.f11930e.a(th2)) {
                Ye.a.Y(th2);
            } else {
                Ue.j.a(this.f11928c);
                b();
            }
        }

        public void f(T t10) {
            if (compareAndSet(0, 1)) {
                long j10 = this.f11939n;
                if (this.f11931f.get() != j10) {
                    this.f11939n = j10 + 1;
                    this.f11927b.h(t10);
                    this.f11938m = 2;
                } else {
                    this.f11935j = t10;
                    this.f11938m = 1;
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            } else {
                this.f11935j = t10;
                this.f11938m = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            c();
        }

        @Override
        public void h(T t10) {
            if (compareAndSet(0, 1)) {
                long j10 = this.f11939n;
                if (this.f11931f.get() != j10) {
                    Ie.n<T> nVar = this.f11934i;
                    if (nVar == null || nVar.isEmpty()) {
                        this.f11939n = j10 + 1;
                        this.f11927b.h(t10);
                        int i10 = this.f11940o + 1;
                        if (i10 == this.f11933h) {
                            this.f11940o = 0;
                            this.f11928c.get().i(i10);
                        } else {
                            this.f11940o = i10;
                        }
                    } else {
                        nVar.offer(t10);
                    }
                } else {
                    d().offer(t10);
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                d().offer(t10);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            c();
        }

        @Override
        public void i(long j10) {
            io.reactivex.internal.util.d.a(this.f11931f, j10);
            b();
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.k(this.f11928c, dVar, this.f11932g);
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f11930e.a(th2)) {
                Ye.a.Y(th2);
            } else {
                Ue.j.a(this.f11928c);
                b();
            }
        }
    }

    public I0(AbstractC2362l<T> abstractC2362l, Be.Q<? extends T> q10) {
        super(abstractC2362l);
        this.f11923d = q10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        a aVar = new a(cVar);
        cVar.j(aVar);
        this.f12507c.l6(aVar);
        this.f11923d.a(aVar.f11929d);
    }
}
