package Ne;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import Be.v;
import Be.y;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class d<T, R> extends AbstractC2362l<R> {

    public final AbstractC2362l<T> f15941c;

    public final Fe.o<? super T, ? extends y<? extends R>> f15942d;

    public final io.reactivex.internal.util.j f15943e;

    public final int f15944f;

    public static final class a<T, R> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f15945q = -9140123220065488293L;

        public static final int f15946r = 0;

        public static final int f15947s = 1;

        public static final int f15948t = 2;

        public final hn.c<? super R> f15949b;

        public final Fe.o<? super T, ? extends y<? extends R>> f15950c;

        public final int f15951d;

        public final AtomicLong f15952e = new AtomicLong();

        public final io.reactivex.internal.util.c f15953f = new io.reactivex.internal.util.c();

        public final C0447a<R> f15954g = new C0447a<>(this);

        public final Ie.n<T> f15955h;

        public final io.reactivex.internal.util.j f15956i;

        public hn.d f15957j;

        public volatile boolean f15958k;

        public volatile boolean f15959l;

        public long f15960m;

        public int f15961n;

        public R f15962o;

        public volatile int f15963p;

        public static final class C0447a<R> extends AtomicReference<De.c> implements v<R> {

            public static final long f15964c = -3051469169682093892L;

            public final a<?, R> f15965b;

            public C0447a(a<?, R> aVar) {
                this.f15965b = aVar;
            }

            @Override
            public void a() {
                this.f15965b.c();
            }

            @Override
            public void b(R r10) {
                this.f15965b.e(r10);
            }

            public void c() {
                Ge.d.a(this);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.c(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f15965b.d(th2);
            }
        }

        public a(hn.c<? super R> cVar, Fe.o<? super T, ? extends y<? extends R>> oVar, int i10, io.reactivex.internal.util.j jVar) {
            this.f15949b = cVar;
            this.f15950c = oVar;
            this.f15951d = i10;
            this.f15956i = jVar;
            this.f15955h = new Re.b(i10);
        }

        @Override
        public void a() {
            this.f15958k = true;
            b();
        }

        public void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            hn.c<? super R> cVar = this.f15949b;
            io.reactivex.internal.util.j jVar = this.f15956i;
            Ie.n<T> nVar = this.f15955h;
            io.reactivex.internal.util.c cVar2 = this.f15953f;
            AtomicLong atomicLong = this.f15952e;
            int i10 = this.f15951d;
            int i11 = i10 - (i10 >> 1);
            int i12 = 1;
            while (true) {
                if (this.f15959l) {
                    nVar.clear();
                    this.f15962o = null;
                } else {
                    int i13 = this.f15963p;
                    if (cVar2.get() == null || (jVar != io.reactivex.internal.util.j.IMMEDIATE && (jVar != io.reactivex.internal.util.j.BOUNDARY || i13 != 0))) {
                        if (i13 == 0) {
                            boolean z10 = this.f15958k;
                            T poll = nVar.poll();
                            boolean z11 = poll == null;
                            if (z10 && z11) {
                                Throwable c10 = cVar2.c();
                                if (c10 == null) {
                                    cVar.a();
                                    return;
                                } else {
                                    cVar.onError(c10);
                                    return;
                                }
                            }
                            if (!z11) {
                                int i14 = this.f15961n + 1;
                                if (i14 == i11) {
                                    this.f15961n = 0;
                                    this.f15957j.i(i11);
                                } else {
                                    this.f15961n = i14;
                                }
                                try {
                                    y yVar = (y) He.b.g(this.f15950c.apply(poll), "The mapper returned a null MaybeSource");
                                    this.f15963p = 1;
                                    yVar.d(this.f15954g);
                                } catch (Throwable th2) {
                                    io.reactivex.exceptions.a.b(th2);
                                    this.f15957j.cancel();
                                    nVar.clear();
                                    cVar2.a(th2);
                                    cVar.onError(cVar2.c());
                                    return;
                                }
                            }
                        } else if (i13 == 2) {
                            long j10 = this.f15960m;
                            if (j10 != atomicLong.get()) {
                                R r10 = this.f15962o;
                                this.f15962o = null;
                                cVar.h(r10);
                                this.f15960m = j10 + 1;
                                this.f15963p = 0;
                            }
                        }
                    }
                }
                i12 = addAndGet(-i12);
                if (i12 == 0) {
                    return;
                }
            }
            nVar.clear();
            this.f15962o = null;
            cVar.onError(cVar2.c());
        }

        public void c() {
            this.f15963p = 0;
            b();
        }

        @Override
        public void cancel() {
            this.f15959l = true;
            this.f15957j.cancel();
            this.f15954g.c();
            if (getAndIncrement() == 0) {
                this.f15955h.clear();
                this.f15962o = null;
            }
        }

        public void d(Throwable th2) {
            if (!this.f15953f.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f15956i != io.reactivex.internal.util.j.END) {
                this.f15957j.cancel();
            }
            this.f15963p = 0;
            b();
        }

        public void e(R r10) {
            this.f15962o = r10;
            this.f15963p = 2;
            b();
        }

        @Override
        public void h(T t10) {
            if (this.f15955h.offer(t10)) {
                b();
            } else {
                this.f15957j.cancel();
                onError(new MissingBackpressureException("queue full?!"));
            }
        }

        @Override
        public void i(long j10) {
            io.reactivex.internal.util.d.a(this.f15952e, j10);
            b();
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f15957j, dVar)) {
                this.f15957j = dVar;
                this.f15949b.j(this);
                dVar.i(this.f15951d);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f15953f.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f15956i == io.reactivex.internal.util.j.IMMEDIATE) {
                this.f15954g.c();
            }
            this.f15958k = true;
            b();
        }
    }

    public d(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends y<? extends R>> oVar, io.reactivex.internal.util.j jVar, int i10) {
        this.f15941c = abstractC2362l;
        this.f15942d = oVar;
        this.f15943e = jVar;
        this.f15944f = i10;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        this.f15941c.l6(new a(cVar, this.f15942d, this.f15944f, this.f15943e));
    }
}
