package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class H0<T> extends AbstractC2692a<T, T> {

    public final Be.y<? extends T> f11897d;

    public static final class a<T> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f11898p = -4592979584110982903L;

        public static final int f11899q = 1;

        public static final int f11900r = 2;

        public final hn.c<? super T> f11901b;

        public final AtomicReference<hn.d> f11902c = new AtomicReference<>();

        public final C0386a<T> f11903d = new C0386a<>(this);

        public final io.reactivex.internal.util.c f11904e = new io.reactivex.internal.util.c();

        public final AtomicLong f11905f = new AtomicLong();

        public final int f11906g;

        public final int f11907h;

        public volatile Ie.n<T> f11908i;

        public T f11909j;

        public volatile boolean f11910k;

        public volatile boolean f11911l;

        public volatile int f11912m;

        public long f11913n;

        public int f11914o;

        public static final class C0386a<T> extends AtomicReference<De.c> implements Be.v<T> {

            public static final long f11915c = -2935427570954647017L;

            public final a<T> f11916b;

            public C0386a(a<T> aVar) {
                this.f11916b = aVar;
            }

            @Override
            public void a() {
                this.f11916b.e();
            }

            @Override
            public void b(T t10) {
                this.f11916b.g(t10);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f11916b.f(th2);
            }
        }

        public a(hn.c<? super T> cVar) {
            this.f11901b = cVar;
            int a02 = AbstractC2362l.a0();
            this.f11906g = a02;
            this.f11907h = a02 - (a02 >> 2);
        }

        @Override
        public void a() {
            this.f11911l = true;
            b();
        }

        public void b() {
            if (getAndIncrement() == 0) {
                c();
            }
        }

        public void c() {
            hn.c<? super T> cVar = this.f11901b;
            long j10 = this.f11913n;
            int i10 = this.f11914o;
            int i11 = this.f11907h;
            int i12 = 1;
            int i13 = 1;
            while (true) {
                long j11 = this.f11905f.get();
                while (j10 != j11) {
                    if (this.f11910k) {
                        this.f11909j = null;
                        this.f11908i = null;
                        return;
                    }
                    if (this.f11904e.get() != null) {
                        this.f11909j = null;
                        this.f11908i = null;
                        cVar.onError(this.f11904e.c());
                        return;
                    }
                    int i14 = this.f11912m;
                    if (i14 == i12) {
                        T t10 = this.f11909j;
                        this.f11909j = null;
                        this.f11912m = 2;
                        cVar.h(t10);
                        j10++;
                    } else {
                        boolean z10 = this.f11911l;
                        Ie.n<T> nVar = this.f11908i;
                        A0.a poll = nVar != null ? nVar.poll() : null;
                        boolean z11 = poll == null;
                        if (z10 && z11 && i14 == 2) {
                            this.f11908i = null;
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
                                this.f11902c.get().i(i11);
                                i10 = 0;
                            }
                            i12 = 1;
                        }
                    }
                }
                if (j10 == j11) {
                    if (this.f11910k) {
                        this.f11909j = null;
                        this.f11908i = null;
                        return;
                    }
                    if (this.f11904e.get() != null) {
                        this.f11909j = null;
                        this.f11908i = null;
                        cVar.onError(this.f11904e.c());
                        return;
                    }
                    boolean z12 = this.f11911l;
                    Ie.n<T> nVar2 = this.f11908i;
                    boolean z13 = nVar2 == null || nVar2.isEmpty();
                    if (z12 && z13 && this.f11912m == 2) {
                        this.f11908i = null;
                        cVar.a();
                        return;
                    }
                }
                this.f11913n = j10;
                this.f11914o = i10;
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
            this.f11910k = true;
            Ue.j.a(this.f11902c);
            Ge.d.a(this.f11903d);
            if (getAndIncrement() == 0) {
                this.f11908i = null;
                this.f11909j = null;
            }
        }

        public Ie.n<T> d() {
            Ie.n<T> nVar = this.f11908i;
            if (nVar != null) {
                return nVar;
            }
            Re.b bVar = new Re.b(AbstractC2362l.a0());
            this.f11908i = bVar;
            return bVar;
        }

        public void e() {
            this.f11912m = 2;
            b();
        }

        public void f(Throwable th2) {
            if (!this.f11904e.a(th2)) {
                Ye.a.Y(th2);
            } else {
                Ue.j.a(this.f11902c);
                b();
            }
        }

        public void g(T t10) {
            if (compareAndSet(0, 1)) {
                long j10 = this.f11913n;
                if (this.f11905f.get() != j10) {
                    this.f11913n = j10 + 1;
                    this.f11901b.h(t10);
                    this.f11912m = 2;
                } else {
                    this.f11909j = t10;
                    this.f11912m = 1;
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            } else {
                this.f11909j = t10;
                this.f11912m = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            c();
        }

        @Override
        public void h(T t10) {
            if (compareAndSet(0, 1)) {
                long j10 = this.f11913n;
                if (this.f11905f.get() != j10) {
                    Ie.n<T> nVar = this.f11908i;
                    if (nVar == null || nVar.isEmpty()) {
                        this.f11913n = j10 + 1;
                        this.f11901b.h(t10);
                        int i10 = this.f11914o + 1;
                        if (i10 == this.f11907h) {
                            this.f11914o = 0;
                            this.f11902c.get().i(i10);
                        } else {
                            this.f11914o = i10;
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
            io.reactivex.internal.util.d.a(this.f11905f, j10);
            b();
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.k(this.f11902c, dVar, this.f11906g);
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f11904e.a(th2)) {
                Ye.a.Y(th2);
            } else {
                Ue.j.a(this.f11902c);
                b();
            }
        }
    }

    public H0(AbstractC2362l<T> abstractC2362l, Be.y<? extends T> yVar) {
        super(abstractC2362l);
        this.f11897d = yVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        a aVar = new a(cVar);
        cVar.j(aVar);
        this.f12507c.l6(aVar);
        this.f11897d.d(aVar.f11903d);
    }
}
