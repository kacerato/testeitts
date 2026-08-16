package Ne;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import Be.N;
import Be.Q;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class e<T, R> extends AbstractC2362l<R> {

    public final AbstractC2362l<T> f15966c;

    public final Fe.o<? super T, ? extends Q<? extends R>> f15967d;

    public final io.reactivex.internal.util.j f15968e;

    public final int f15969f;

    public static final class a<T, R> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f15970q = -9140123220065488293L;

        public static final int f15971r = 0;

        public static final int f15972s = 1;

        public static final int f15973t = 2;

        public final hn.c<? super R> f15974b;

        public final Fe.o<? super T, ? extends Q<? extends R>> f15975c;

        public final int f15976d;

        public final AtomicLong f15977e = new AtomicLong();

        public final io.reactivex.internal.util.c f15978f = new io.reactivex.internal.util.c();

        public final C0448a<R> f15979g = new C0448a<>(this);

        public final Ie.n<T> f15980h;

        public final io.reactivex.internal.util.j f15981i;

        public hn.d f15982j;

        public volatile boolean f15983k;

        public volatile boolean f15984l;

        public long f15985m;

        public int f15986n;

        public R f15987o;

        public volatile int f15988p;

        public static final class C0448a<R> extends AtomicReference<De.c> implements N<R> {

            public static final long f15989c = -3051469169682093892L;

            public final a<?, R> f15990b;

            public C0448a(a<?, R> aVar) {
                this.f15990b = aVar;
            }

            public void a() {
                Ge.d.a(this);
            }

            @Override
            public void b(R r10) {
                this.f15990b.d(r10);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.c(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f15990b.c(th2);
            }
        }

        public a(hn.c<? super R> cVar, Fe.o<? super T, ? extends Q<? extends R>> oVar, int i10, io.reactivex.internal.util.j jVar) {
            this.f15974b = cVar;
            this.f15975c = oVar;
            this.f15976d = i10;
            this.f15981i = jVar;
            this.f15980h = new Re.b(i10);
        }

        @Override
        public void a() {
            this.f15983k = true;
            b();
        }

        public void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            hn.c<? super R> cVar = this.f15974b;
            io.reactivex.internal.util.j jVar = this.f15981i;
            Ie.n<T> nVar = this.f15980h;
            io.reactivex.internal.util.c cVar2 = this.f15978f;
            AtomicLong atomicLong = this.f15977e;
            int i10 = this.f15976d;
            int i11 = i10 - (i10 >> 1);
            int i12 = 1;
            while (true) {
                if (this.f15984l) {
                    nVar.clear();
                    this.f15987o = null;
                } else {
                    int i13 = this.f15988p;
                    if (cVar2.get() == null || (jVar != io.reactivex.internal.util.j.IMMEDIATE && (jVar != io.reactivex.internal.util.j.BOUNDARY || i13 != 0))) {
                        if (i13 == 0) {
                            boolean z10 = this.f15983k;
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
                                int i14 = this.f15986n + 1;
                                if (i14 == i11) {
                                    this.f15986n = 0;
                                    this.f15982j.i(i11);
                                } else {
                                    this.f15986n = i14;
                                }
                                try {
                                    Q q10 = (Q) He.b.g(this.f15975c.apply(poll), "The mapper returned a null SingleSource");
                                    this.f15988p = 1;
                                    q10.a(this.f15979g);
                                } catch (Throwable th2) {
                                    io.reactivex.exceptions.a.b(th2);
                                    this.f15982j.cancel();
                                    nVar.clear();
                                    cVar2.a(th2);
                                    cVar.onError(cVar2.c());
                                    return;
                                }
                            }
                        } else if (i13 == 2) {
                            long j10 = this.f15985m;
                            if (j10 != atomicLong.get()) {
                                R r10 = this.f15987o;
                                this.f15987o = null;
                                cVar.h(r10);
                                this.f15985m = j10 + 1;
                                this.f15988p = 0;
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
            this.f15987o = null;
            cVar.onError(cVar2.c());
        }

        public void c(Throwable th2) {
            if (!this.f15978f.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f15981i != io.reactivex.internal.util.j.END) {
                this.f15982j.cancel();
            }
            this.f15988p = 0;
            b();
        }

        @Override
        public void cancel() {
            this.f15984l = true;
            this.f15982j.cancel();
            this.f15979g.a();
            if (getAndIncrement() == 0) {
                this.f15980h.clear();
                this.f15987o = null;
            }
        }

        public void d(R r10) {
            this.f15987o = r10;
            this.f15988p = 2;
            b();
        }

        @Override
        public void h(T t10) {
            if (this.f15980h.offer(t10)) {
                b();
            } else {
                this.f15982j.cancel();
                onError(new MissingBackpressureException("queue full?!"));
            }
        }

        @Override
        public void i(long j10) {
            io.reactivex.internal.util.d.a(this.f15977e, j10);
            b();
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f15982j, dVar)) {
                this.f15982j = dVar;
                this.f15974b.j(this);
                dVar.i(this.f15976d);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f15978f.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f15981i == io.reactivex.internal.util.j.IMMEDIATE) {
                this.f15979g.a();
            }
            this.f15983k = true;
            b();
        }
    }

    public e(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends Q<? extends R>> oVar, io.reactivex.internal.util.j jVar, int i10) {
        this.f15966c = abstractC2362l;
        this.f15967d = oVar;
        this.f15968e = jVar;
        this.f15969f = i10;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        this.f15966c.l6(new a(cVar, this.f15967d, this.f15969f, this.f15968e));
    }
}
