package Oe;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class B0<T> extends AbstractC2859a<T, T> {

    public final Be.y<? extends T> f18708c;

    public static final class a<T> extends AtomicInteger implements Be.I<T>, De.c {

        public static final long f18709k = -4592979584110982903L;

        public static final int f18710l = 1;

        public static final int f18711m = 2;

        public final Be.I<? super T> f18712b;

        public final AtomicReference<De.c> f18713c = new AtomicReference<>();

        public final C0474a<T> f18714d = new C0474a<>(this);

        public final io.reactivex.internal.util.c f18715e = new io.reactivex.internal.util.c();

        public volatile Ie.n<T> f18716f;

        public T f18717g;

        public volatile boolean f18718h;

        public volatile boolean f18719i;

        public volatile int f18720j;

        public static final class C0474a<T> extends AtomicReference<De.c> implements Be.v<T> {

            public static final long f18721c = -2935427570954647017L;

            public final a<T> f18722b;

            public C0474a(a<T> aVar) {
                this.f18722b = aVar;
            }

            @Override
            public void a() {
                this.f18722b.g();
            }

            @Override
            public void b(T t10) {
                this.f18722b.j(t10);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f18722b.i(th2);
            }
        }

        public a(Be.I<? super T> i10) {
            this.f18712b = i10;
        }

        @Override
        public void a() {
            this.f18719i = true;
            b();
        }

        public void b() {
            if (getAndIncrement() == 0) {
                c();
            }
        }

        public void c() {
            Be.I<? super T> i10 = this.f18712b;
            int i11 = 1;
            while (!this.f18718h) {
                if (this.f18715e.get() != null) {
                    this.f18717g = null;
                    this.f18716f = null;
                    i10.onError(this.f18715e.c());
                    return;
                }
                int i12 = this.f18720j;
                if (i12 == 1) {
                    T t10 = this.f18717g;
                    this.f18717g = null;
                    this.f18720j = 2;
                    i10.h(t10);
                    i12 = 2;
                }
                boolean z10 = this.f18719i;
                Ie.n<T> nVar = this.f18716f;
                A0.a poll = nVar != null ? nVar.poll() : null;
                boolean z11 = poll == null;
                if (z10 && z11 && i12 == 2) {
                    this.f18716f = null;
                    i10.a();
                    return;
                } else if (z11) {
                    i11 = addAndGet(-i11);
                    if (i11 == 0) {
                        return;
                    }
                } else {
                    i10.h(poll);
                }
            }
            this.f18717g = null;
            this.f18716f = null;
        }

        @Override
        public boolean d() {
            return Ge.d.b(this.f18713c.get());
        }

        @Override
        public void dispose() {
            this.f18718h = true;
            Ge.d.a(this.f18713c);
            Ge.d.a(this.f18714d);
            if (getAndIncrement() == 0) {
                this.f18716f = null;
                this.f18717g = null;
            }
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this.f18713c, cVar);
        }

        public Ie.n<T> f() {
            Ie.n<T> nVar = this.f18716f;
            if (nVar != null) {
                return nVar;
            }
            Re.c cVar = new Re.c(Be.B.V());
            this.f18716f = cVar;
            return cVar;
        }

        public void g() {
            this.f18720j = 2;
            b();
        }

        @Override
        public void h(T t10) {
            if (compareAndSet(0, 1)) {
                this.f18712b.h(t10);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                f().offer(t10);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            c();
        }

        public void i(Throwable th2) {
            if (!this.f18715e.a(th2)) {
                Ye.a.Y(th2);
            } else {
                Ge.d.a(this.f18713c);
                b();
            }
        }

        public void j(T t10) {
            if (compareAndSet(0, 1)) {
                this.f18712b.h(t10);
                this.f18720j = 2;
            } else {
                this.f18717g = t10;
                this.f18720j = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            c();
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f18715e.a(th2)) {
                Ye.a.Y(th2);
            } else {
                Ge.d.a(this.f18713c);
                b();
            }
        }
    }

    public B0(Be.B<T> b10, Be.y<? extends T> yVar) {
        super(b10);
        this.f18708c = yVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        a aVar = new a(i10);
        i10.e(aVar);
        this.f19344b.c(aVar);
        this.f18708c.d(aVar.f18714d);
    }
}
