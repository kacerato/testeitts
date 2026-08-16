package Oe;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class s1<T, U> extends AbstractC2859a<T, T> {

    public final Be.G<? extends U> f19876c;

    public static final class a<T, U> extends AtomicInteger implements Be.I<T>, De.c {

        public static final long f19877f = 1418547743690811973L;

        public final Be.I<? super T> f19878b;

        public final AtomicReference<De.c> f19879c = new AtomicReference<>();

        public final a<T, U>.C0489a f19880d = new C0489a();

        public final io.reactivex.internal.util.c f19881e = new io.reactivex.internal.util.c();

        public final class C0489a extends AtomicReference<De.c> implements Be.I<U> {

            public static final long f19882c = -8693423678067375039L;

            public C0489a() {
            }

            @Override
            public void a() {
                a.this.b();
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void h(U u10) {
                Ge.d.a(this);
                a.this.b();
            }

            @Override
            public void onError(Throwable th2) {
                a.this.c(th2);
            }
        }

        public a(Be.I<? super T> i10) {
            this.f19878b = i10;
        }

        @Override
        public void a() {
            Ge.d.a(this.f19880d);
            io.reactivex.internal.util.k.a(this.f19878b, this, this.f19881e);
        }

        public void b() {
            Ge.d.a(this.f19879c);
            io.reactivex.internal.util.k.a(this.f19878b, this, this.f19881e);
        }

        public void c(Throwable th2) {
            Ge.d.a(this.f19879c);
            io.reactivex.internal.util.k.c(this.f19878b, th2, this, this.f19881e);
        }

        @Override
        public boolean d() {
            return Ge.d.b(this.f19879c.get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this.f19879c);
            Ge.d.a(this.f19880d);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this.f19879c, cVar);
        }

        @Override
        public void h(T t10) {
            io.reactivex.internal.util.k.e(this.f19878b, t10, this, this.f19881e);
        }

        @Override
        public void onError(Throwable th2) {
            Ge.d.a(this.f19880d);
            io.reactivex.internal.util.k.c(this.f19878b, th2, this, this.f19881e);
        }
    }

    public s1(Be.G<T> g10, Be.G<? extends U> g11) {
        super(g10);
        this.f19876c = g11;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        a aVar = new a(i10);
        i10.e(aVar);
        this.f19876c.c(aVar.f19880d);
        this.f19344b.c(aVar);
    }
}
