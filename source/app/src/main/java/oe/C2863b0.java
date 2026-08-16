package Oe;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C2863b0<T, R> extends AbstractC2859a<T, R> {

    public final Fe.o<? super T, ? extends Be.Q<? extends R>> f19374c;

    public final boolean f19375d;

    public static final class a<T, R> extends AtomicInteger implements Be.I<T>, De.c {

        public static final long f19376k = 8600231336733376951L;

        public final Be.I<? super R> f19377b;

        public final boolean f19378c;

        public final Fe.o<? super T, ? extends Be.Q<? extends R>> f19382g;

        public De.c f19384i;

        public volatile boolean f19385j;

        public final De.b f19379d = new De.b();

        public final io.reactivex.internal.util.c f19381f = new io.reactivex.internal.util.c();

        public final AtomicInteger f19380e = new AtomicInteger(1);

        public final AtomicReference<Re.c<R>> f19383h = new AtomicReference<>();

        public final class C0486a extends AtomicReference<De.c> implements Be.N<R>, De.c {

            public static final long f19386c = -502562646270949838L;

            public C0486a() {
            }

            @Override
            public void b(R r10) {
                a.this.j(this, r10);
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
                a.this.i(this, th2);
            }
        }

        public a(Be.I<? super R> i10, Fe.o<? super T, ? extends Be.Q<? extends R>> oVar, boolean z10) {
            this.f19377b = i10;
            this.f19382g = oVar;
            this.f19378c = z10;
        }

        @Override
        public void a() {
            this.f19380e.decrementAndGet();
            c();
        }

        public void b() {
            Re.c<R> cVar = this.f19383h.get();
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
            return this.f19385j;
        }

        @Override
        public void dispose() {
            this.f19385j = true;
            this.f19384i.dispose();
            this.f19379d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19384i, cVar)) {
                this.f19384i = cVar;
                this.f19377b.e(this);
            }
        }

        public void f() {
            Be.I<? super R> i10 = this.f19377b;
            AtomicInteger atomicInteger = this.f19380e;
            AtomicReference<Re.c<R>> atomicReference = this.f19383h;
            int i11 = 1;
            while (!this.f19385j) {
                if (!this.f19378c && this.f19381f.get() != null) {
                    Throwable c10 = this.f19381f.c();
                    b();
                    i10.onError(c10);
                    return;
                }
                boolean z10 = atomicInteger.get() == 0;
                Re.c<R> cVar = atomicReference.get();
                A0.a poll = cVar != null ? cVar.poll() : null;
                boolean z11 = poll == null;
                if (z10 && z11) {
                    Throwable c11 = this.f19381f.c();
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
                Re.c<R> cVar2 = this.f19383h.get();
                if (cVar2 != null) {
                    return cVar2;
                }
                cVar = new Re.c<>(Be.B.V());
            } while (!androidx.lifecycle.c.a(this.f19383h, null, cVar));
            return cVar;
        }

        @Override
        public void h(T t10) {
            try {
                Be.Q q10 = (Be.Q) He.b.g(this.f19382g.apply(t10), "The mapper returned a null SingleSource");
                this.f19380e.getAndIncrement();
                C0486a c0486a = new C0486a();
                if (this.f19385j || !this.f19379d.a(c0486a)) {
                    return;
                }
                q10.a(c0486a);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19384i.dispose();
                onError(th2);
            }
        }

        public void i(a<T, R>.C0486a c0486a, Throwable th2) {
            this.f19379d.b(c0486a);
            if (!this.f19381f.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f19378c) {
                this.f19384i.dispose();
                this.f19379d.dispose();
            }
            this.f19380e.decrementAndGet();
            c();
        }

        public void j(a<T, R>.C0486a c0486a, R r10) {
            this.f19379d.b(c0486a);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    this.f19377b.h(r10);
                    boolean z10 = this.f19380e.decrementAndGet() == 0;
                    Re.c<R> cVar = this.f19383h.get();
                    if (!z10 || (cVar != null && !cVar.isEmpty())) {
                        if (decrementAndGet() == 0) {
                            return;
                        }
                        f();
                    } else {
                        Throwable c10 = this.f19381f.c();
                        if (c10 != null) {
                            this.f19377b.onError(c10);
                            return;
                        } else {
                            this.f19377b.a();
                            return;
                        }
                    }
                }
            }
            Re.c<R> g10 = g();
            synchronized (g10) {
                g10.offer(r10);
            }
            this.f19380e.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            f();
        }

        @Override
        public void onError(Throwable th2) {
            this.f19380e.decrementAndGet();
            if (!this.f19381f.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f19378c) {
                this.f19379d.dispose();
            }
            c();
        }
    }

    public C2863b0(Be.G<T> g10, Fe.o<? super T, ? extends Be.Q<? extends R>> oVar, boolean z10) {
        super(g10);
        this.f19374c = oVar;
        this.f19375d = z10;
    }

    @Override
    public void J5(Be.I<? super R> i10) {
        this.f19344b.c(new a(i10, this.f19374c, this.f19375d));
    }
}
