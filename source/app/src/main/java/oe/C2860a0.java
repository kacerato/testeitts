package Oe;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C2860a0<T, R> extends AbstractC2859a<T, R> {

    public final Fe.o<? super T, ? extends Be.y<? extends R>> f19345c;

    public final boolean f19346d;

    public static final class a<T, R> extends AtomicInteger implements Be.I<T>, De.c {

        public static final long f19347k = 8600231336733376951L;

        public final Be.I<? super R> f19348b;

        public final boolean f19349c;

        public final Fe.o<? super T, ? extends Be.y<? extends R>> f19353g;

        public De.c f19355i;

        public volatile boolean f19356j;

        public final De.b f19350d = new De.b();

        public final io.reactivex.internal.util.c f19352f = new io.reactivex.internal.util.c();

        public final AtomicInteger f19351e = new AtomicInteger(1);

        public final AtomicReference<Re.c<R>> f19354h = new AtomicReference<>();

        public final class C0485a extends AtomicReference<De.c> implements Be.v<R>, De.c {

            public static final long f19357c = -502562646270949838L;

            public C0485a() {
            }

            @Override
            public void a() {
                a.this.i(this);
            }

            @Override
            public void b(R r10) {
                a.this.k(this, r10);
            }

            @Override
            public boolean d() {
                return Ge.d.b(get());
            }

            @Override
            public void dispose() {
                Ge.d.a(this);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                a.this.j(this, th2);
            }
        }

        public a(Be.I<? super R> i10, Fe.o<? super T, ? extends Be.y<? extends R>> oVar, boolean z10) {
            this.f19348b = i10;
            this.f19353g = oVar;
            this.f19349c = z10;
        }

        @Override
        public void a() {
            this.f19351e.decrementAndGet();
            c();
        }

        public void b() {
            Re.c<R> cVar = this.f19354h.get();
            if (cVar != null) {
                cVar.clear();
            }
        }

        public void c() {
            if (getAndIncrement() == 0) {
                f();
            }
        }

        @Override
        public boolean d() {
            return this.f19356j;
        }

        @Override
        public void dispose() {
            this.f19356j = true;
            this.f19355i.dispose();
            this.f19350d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19355i, cVar)) {
                this.f19355i = cVar;
                this.f19348b.e(this);
            }
        }

        public void f() {
            Be.I<? super R> i10 = this.f19348b;
            AtomicInteger atomicInteger = this.f19351e;
            AtomicReference<Re.c<R>> atomicReference = this.f19354h;
            int i11 = 1;
            while (!this.f19356j) {
                if (!this.f19349c && this.f19352f.get() != null) {
                    Throwable c10 = this.f19352f.c();
                    b();
                    i10.onError(c10);
                    return;
                }
                boolean z10 = atomicInteger.get() == 0;
                Re.c<R> cVar = atomicReference.get();
                A0.a poll = cVar != null ? cVar.poll() : null;
                boolean z11 = poll == null;
                if (z10 && z11) {
                    Throwable c11 = this.f19352f.c();
                    if (c11 != null) {
                        i10.onError(c11);
                        return;
                    } else {
                        i10.a();
                        return;
                    }
                }
                if (z11) {
                    i11 = addAndGet(-i11);
                    if (i11 == 0) {
                        return;
                    }
                } else {
                    i10.h(poll);
                }
            }
            b();
        }

        public Re.c<R> g() {
            Re.c<R> cVar;
            do {
                Re.c<R> cVar2 = this.f19354h.get();
                if (cVar2 != null) {
                    return cVar2;
                }
                cVar = new Re.c<>(Be.B.V());
            } while (!androidx.lifecycle.c.a(this.f19354h, null, cVar));
            return cVar;
        }

        @Override
        public void h(T t10) {
            try {
                Be.y yVar = (Be.y) He.b.g(this.f19353g.apply(t10), "The mapper returned a null MaybeSource");
                this.f19351e.getAndIncrement();
                C0485a c0485a = new C0485a();
                if (this.f19356j || !this.f19350d.a(c0485a)) {
                    return;
                }
                yVar.d(c0485a);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19355i.dispose();
                onError(th2);
            }
        }

        public void i(a<T, R>.C0485a c0485a) {
            this.f19350d.b(c0485a);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z10 = this.f19351e.decrementAndGet() == 0;
                    Re.c<R> cVar = this.f19354h.get();
                    if (!z10 || (cVar != null && !cVar.isEmpty())) {
                        if (decrementAndGet() == 0) {
                            return;
                        }
                        f();
                        return;
                    } else {
                        Throwable c10 = this.f19352f.c();
                        if (c10 != null) {
                            this.f19348b.onError(c10);
                            return;
                        } else {
                            this.f19348b.a();
                            return;
                        }
                    }
                }
            }
            this.f19351e.decrementAndGet();
            c();
        }

        public void j(a<T, R>.C0485a c0485a, Throwable th2) {
            this.f19350d.b(c0485a);
            if (!this.f19352f.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f19349c) {
                this.f19355i.dispose();
                this.f19350d.dispose();
            }
            this.f19351e.decrementAndGet();
            c();
        }

        public void k(a<T, R>.C0485a c0485a, R r10) {
            this.f19350d.b(c0485a);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    this.f19348b.h(r10);
                    boolean z10 = this.f19351e.decrementAndGet() == 0;
                    Re.c<R> cVar = this.f19354h.get();
                    if (!z10 || (cVar != null && !cVar.isEmpty())) {
                        if (decrementAndGet() == 0) {
                            return;
                        }
                        f();
                    } else {
                        Throwable c10 = this.f19352f.c();
                        if (c10 != null) {
                            this.f19348b.onError(c10);
                            return;
                        } else {
                            this.f19348b.a();
                            return;
                        }
                    }
                }
            }
            Re.c<R> g10 = g();
            synchronized (g10) {
                g10.offer(r10);
            }
            this.f19351e.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            f();
        }

        @Override
        public void onError(Throwable th2) {
            this.f19351e.decrementAndGet();
            if (!this.f19352f.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f19349c) {
                this.f19350d.dispose();
            }
            c();
        }
    }

    public C2860a0(Be.G<T> g10, Fe.o<? super T, ? extends Be.y<? extends R>> oVar, boolean z10) {
        super(g10);
        this.f19345c = oVar;
        this.f19346d = z10;
    }

    @Override
    public void J5(Be.I<? super R> i10) {
        this.f19344b.c(new a(i10, this.f19345c, this.f19346d));
    }
}
