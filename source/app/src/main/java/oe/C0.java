package Oe;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C0<T> extends AbstractC2859a<T, T> {

    public final Be.Q<? extends T> f18735c;

    public static final class a<T> extends AtomicInteger implements Be.I<T>, De.c {

        public static final long f18736k = -4592979584110982903L;

        public static final int f18737l = 1;

        public static final int f18738m = 2;

        public final Be.I<? super T> f18739b;

        public final AtomicReference<De.c> f18740c = new AtomicReference<>();

        public final C0475a<T> f18741d = new C0475a<>(this);

        public final io.reactivex.internal.util.c f18742e = new io.reactivex.internal.util.c();

        public volatile Ie.n<T> f18743f;

        public T f18744g;

        public volatile boolean f18745h;

        public volatile boolean f18746i;

        public volatile int f18747j;

        public static final class C0475a<T> extends AtomicReference<De.c> implements Be.N<T> {

            public static final long f18748c = -2935427570954647017L;

            public final a<T> f18749b;

            public C0475a(a<T> aVar) {
                this.f18749b = aVar;
            }

            @Override
            public void b(T t10) {
                this.f18749b.i(t10);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f18749b.g(th2);
            }
        }

        public a(Be.I<? super T> i10) {
            this.f18739b = i10;
        }

        @Override
        public void a() {
            this.f18746i = true;
            b();
        }

        public void b() {
            if (getAndIncrement() == 0) {
                c();
            }
        }

        public void c() {
            Be.I<? super T> i10 = this.f18739b;
            int i11 = 1;
            while (!this.f18745h) {
                if (this.f18742e.get() != null) {
                    this.f18744g = null;
                    this.f18743f = null;
                    i10.onError(this.f18742e.c());
                    return;
                }
                int i12 = this.f18747j;
                if (i12 == 1) {
                    T t10 = this.f18744g;
                    this.f18744g = null;
                    this.f18747j = 2;
                    i10.h(t10);
                    i12 = 2;
                }
                boolean z10 = this.f18746i;
                Ie.n<T> nVar = this.f18743f;
                A0.a poll = nVar != null ? nVar.poll() : null;
                boolean z11 = poll == null;
                if (z10 && z11 && i12 == 2) {
                    this.f18743f = null;
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
            this.f18744g = null;
            this.f18743f = null;
        }

        @Override
        public boolean d() {
            return Ge.d.b(this.f18740c.get());
        }

        @Override
        public void dispose() {
            this.f18745h = true;
            Ge.d.a(this.f18740c);
            Ge.d.a(this.f18741d);
            if (getAndIncrement() == 0) {
                this.f18743f = null;
                this.f18744g = null;
            }
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this.f18740c, cVar);
        }

        public Ie.n<T> f() {
            Ie.n<T> nVar = this.f18743f;
            if (nVar != null) {
                return nVar;
            }
            Re.c cVar = new Re.c(Be.B.V());
            this.f18743f = cVar;
            return cVar;
        }

        public void g(Throwable th2) {
            if (!this.f18742e.a(th2)) {
                Ye.a.Y(th2);
            } else {
                Ge.d.a(this.f18740c);
                b();
            }
        }

        @Override
        public void h(T t10) {
            if (compareAndSet(0, 1)) {
                this.f18739b.h(t10);
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

        public void i(T t10) {
            if (compareAndSet(0, 1)) {
                this.f18739b.h(t10);
                this.f18747j = 2;
            } else {
                this.f18744g = t10;
                this.f18747j = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            c();
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f18742e.a(th2)) {
                Ye.a.Y(th2);
            } else {
                Ge.d.a(this.f18740c);
                b();
            }
        }
    }

    public C0(Be.B<T> b10, Be.Q<? extends T> q10) {
        super(b10);
        this.f18735c = q10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        a aVar = new a(i10);
        i10.e(aVar);
        this.f19344b.c(aVar);
        this.f18735c.a(aVar.f18741d);
    }
}
