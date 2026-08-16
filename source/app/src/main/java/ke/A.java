package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class A extends AbstractC2353c {

    public final hn.b<? extends InterfaceC2359i> f11120b;

    public final int f11121c;

    public final boolean f11122d;

    public static final class a extends AtomicInteger implements InterfaceC2367q<InterfaceC2359i>, De.c {

        public static final long f11123h = -2108443387387077490L;

        public final InterfaceC2356f f11124b;

        public final int f11125c;

        public final boolean f11126d;

        public hn.d f11129g;

        public final De.b f11128f = new De.b();

        public final io.reactivex.internal.util.c f11127e = new io.reactivex.internal.util.c();

        public final class C0368a extends AtomicReference<De.c> implements InterfaceC2356f, De.c {

            public static final long f11130c = 251330541679988317L;

            public C0368a() {
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

        public a(InterfaceC2356f interfaceC2356f, int i10, boolean z10) {
            this.f11124b = interfaceC2356f;
            this.f11125c = i10;
            this.f11126d = z10;
            lazySet(1);
        }

        @Override
        public void a() {
            if (decrementAndGet() == 0) {
                if (this.f11127e.get() != null) {
                    this.f11124b.onError(this.f11127e.c());
                } else {
                    this.f11124b.a();
                }
            }
        }

        public void b(C0368a c0368a) {
            this.f11128f.b(c0368a);
            if (decrementAndGet() != 0) {
                if (this.f11125c != Integer.MAX_VALUE) {
                    this.f11129g.i(1L);
                }
            } else {
                Throwable th2 = this.f11127e.get();
                if (th2 != null) {
                    this.f11124b.onError(th2);
                } else {
                    this.f11124b.a();
                }
            }
        }

        public void c(C0368a c0368a, Throwable th2) {
            this.f11128f.b(c0368a);
            if (!this.f11126d) {
                this.f11129g.cancel();
                this.f11128f.dispose();
                if (!this.f11127e.a(th2)) {
                    Ye.a.Y(th2);
                    return;
                } else {
                    if (getAndSet(0) > 0) {
                        this.f11124b.onError(this.f11127e.c());
                        return;
                    }
                    return;
                }
            }
            if (!this.f11127e.a(th2)) {
                Ye.a.Y(th2);
            } else if (decrementAndGet() == 0) {
                this.f11124b.onError(this.f11127e.c());
            } else if (this.f11125c != Integer.MAX_VALUE) {
                this.f11129g.i(1L);
            }
        }

        @Override
        public boolean d() {
            return this.f11128f.d();
        }

        @Override
        public void dispose() {
            this.f11129g.cancel();
            this.f11128f.dispose();
        }

        @Override
        public void h(InterfaceC2359i interfaceC2359i) {
            getAndIncrement();
            C0368a c0368a = new C0368a();
            this.f11128f.a(c0368a);
            interfaceC2359i.b(c0368a);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11129g, dVar)) {
                this.f11129g = dVar;
                this.f11124b.e(this);
                int i10 = this.f11125c;
                if (i10 == Integer.MAX_VALUE) {
                    dVar.i(Long.MAX_VALUE);
                } else {
                    dVar.i(i10);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f11126d) {
                if (!this.f11127e.a(th2)) {
                    Ye.a.Y(th2);
                    return;
                } else {
                    if (decrementAndGet() == 0) {
                        this.f11124b.onError(this.f11127e.c());
                        return;
                    }
                    return;
                }
            }
            this.f11128f.dispose();
            if (!this.f11127e.a(th2)) {
                Ye.a.Y(th2);
            } else if (getAndSet(0) > 0) {
                this.f11124b.onError(this.f11127e.c());
            }
        }
    }

    public A(hn.b<? extends InterfaceC2359i> bVar, int i10, boolean z10) {
        this.f11120b = bVar;
        this.f11121c = i10;
        this.f11122d = z10;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f11120b.l(new a(interfaceC2356f, this.f11121c, this.f11122d));
    }
}
