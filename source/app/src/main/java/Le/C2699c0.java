package Le;

import Be.AbstractC2353c;
import Be.AbstractC2362l;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C2699c0<T> extends AbstractC2353c implements Ie.b<T> {

    public final AbstractC2362l<T> f12623b;

    public final Fe.o<? super T, ? extends InterfaceC2359i> f12624c;

    public final int f12625d;

    public final boolean f12626e;

    public static final class a<T> extends AtomicInteger implements InterfaceC2367q<T>, De.c {

        public static final long f12627j = 8443155186132538303L;

        public final InterfaceC2356f f12628b;

        public final Fe.o<? super T, ? extends InterfaceC2359i> f12630d;

        public final boolean f12631e;

        public final int f12633g;

        public hn.d f12634h;

        public volatile boolean f12635i;

        public final io.reactivex.internal.util.c f12629c = new io.reactivex.internal.util.c();

        public final De.b f12632f = new De.b();

        public final class C0393a extends AtomicReference<De.c> implements InterfaceC2356f, De.c {

            public static final long f12636c = 8606673141535671828L;

            public C0393a() {
            }

            @Override
            public void a() {
                a.this.b(this);
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
                a.this.c(this, th2);
            }
        }

        public a(InterfaceC2356f interfaceC2356f, Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10, int i10) {
            this.f12628b = interfaceC2356f;
            this.f12630d = oVar;
            this.f12631e = z10;
            this.f12633g = i10;
            lazySet(1);
        }

        @Override
        public void a() {
            if (decrementAndGet() != 0) {
                if (this.f12633g != Integer.MAX_VALUE) {
                    this.f12634h.i(1L);
                }
            } else {
                Throwable c10 = this.f12629c.c();
                if (c10 != null) {
                    this.f12628b.onError(c10);
                } else {
                    this.f12628b.a();
                }
            }
        }

        public void b(a<T>.C0393a c0393a) {
            this.f12632f.b(c0393a);
            a();
        }

        public void c(a<T>.C0393a c0393a, Throwable th2) {
            this.f12632f.b(c0393a);
            onError(th2);
        }

        @Override
        public boolean d() {
            return this.f12632f.d();
        }

        @Override
        public void dispose() {
            this.f12635i = true;
            this.f12634h.cancel();
            this.f12632f.dispose();
        }

        @Override
        public void h(T t10) {
            try {
                InterfaceC2359i interfaceC2359i = (InterfaceC2359i) He.b.g(this.f12630d.apply(t10), "The mapper returned a null CompletableSource");
                getAndIncrement();
                C0393a c0393a = new C0393a();
                if (this.f12635i || !this.f12632f.a(c0393a)) {
                    return;
                }
                interfaceC2359i.b(c0393a);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f12634h.cancel();
                onError(th2);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12634h, dVar)) {
                this.f12634h = dVar;
                this.f12628b.e(this);
                int i10 = this.f12633g;
                if (i10 == Integer.MAX_VALUE) {
                    dVar.i(Long.MAX_VALUE);
                } else {
                    dVar.i(i10);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f12629c.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f12631e) {
                dispose();
                if (getAndSet(0) > 0) {
                    this.f12628b.onError(this.f12629c.c());
                    return;
                }
                return;
            }
            if (decrementAndGet() == 0) {
                this.f12628b.onError(this.f12629c.c());
            } else if (this.f12633g != Integer.MAX_VALUE) {
                this.f12634h.i(1L);
            }
        }
    }

    public C2699c0(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10, int i10) {
        this.f12623b = abstractC2362l;
        this.f12624c = oVar;
        this.f12626e = z10;
        this.f12625d = i10;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f12623b.l6(new a(interfaceC2356f, this.f12624c, this.f12626e, this.f12625d));
    }

    @Override
    public AbstractC2362l<T> f() {
        return Ye.a.P(new C2696b0(this.f12623b, this.f12624c, this.f12626e, this.f12625d));
    }
}
