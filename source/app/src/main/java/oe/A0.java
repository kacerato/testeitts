package Oe;

import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class A0<T> extends AbstractC2859a<T, T> {

    public final InterfaceC2359i f18689c;

    public static final class a<T> extends AtomicInteger implements Be.I<T>, De.c {

        public static final long f18690h = -4592979584110982903L;

        public final Be.I<? super T> f18691b;

        public final AtomicReference<De.c> f18692c = new AtomicReference<>();

        public final C0473a f18693d = new C0473a(this);

        public final io.reactivex.internal.util.c f18694e = new io.reactivex.internal.util.c();

        public volatile boolean f18695f;

        public volatile boolean f18696g;

        public static final class C0473a extends AtomicReference<De.c> implements InterfaceC2356f {

            public static final long f18697c = -2935427570954647017L;

            public final a<?> f18698b;

            public C0473a(a<?> aVar) {
                this.f18698b = aVar;
            }

            @Override
            public void a() {
                this.f18698b.b();
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f18698b.c(th2);
            }
        }

        public a(Be.I<? super T> i10) {
            this.f18691b = i10;
        }

        @Override
        public void a() {
            this.f18695f = true;
            if (this.f18696g) {
                io.reactivex.internal.util.k.a(this.f18691b, this, this.f18694e);
            }
        }

        public void b() {
            this.f18696g = true;
            if (this.f18695f) {
                io.reactivex.internal.util.k.a(this.f18691b, this, this.f18694e);
            }
        }

        public void c(Throwable th2) {
            Ge.d.a(this.f18692c);
            io.reactivex.internal.util.k.c(this.f18691b, th2, this, this.f18694e);
        }

        @Override
        public boolean d() {
            return Ge.d.b(this.f18692c.get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this.f18692c);
            Ge.d.a(this.f18693d);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this.f18692c, cVar);
        }

        @Override
        public void h(T t10) {
            io.reactivex.internal.util.k.e(this.f18691b, t10, this, this.f18694e);
        }

        @Override
        public void onError(Throwable th2) {
            Ge.d.a(this.f18692c);
            io.reactivex.internal.util.k.c(this.f18691b, th2, this, this.f18694e);
        }
    }

    public A0(Be.B<T> b10, InterfaceC2359i interfaceC2359i) {
        super(b10);
        this.f18689c = interfaceC2359i;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        a aVar = new a(i10);
        i10.e(aVar);
        this.f19344b.c(aVar);
        this.f18689c.b(aVar.f18693d);
    }
}
