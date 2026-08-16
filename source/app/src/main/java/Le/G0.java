package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class G0<T> extends AbstractC2692a<T, T> {

    public final InterfaceC2359i f11860d;

    public static final class a<T> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f11861i = -4592979584110982903L;

        public final hn.c<? super T> f11862b;

        public final AtomicReference<hn.d> f11863c = new AtomicReference<>();

        public final C0384a f11864d = new C0384a(this);

        public final io.reactivex.internal.util.c f11865e = new io.reactivex.internal.util.c();

        public final AtomicLong f11866f = new AtomicLong();

        public volatile boolean f11867g;

        public volatile boolean f11868h;

        public static final class C0384a extends AtomicReference<De.c> implements InterfaceC2356f {

            public static final long f11869c = -2935427570954647017L;

            public final a<?> f11870b;

            public C0384a(a<?> aVar) {
                this.f11870b = aVar;
            }

            @Override
            public void a() {
                this.f11870b.b();
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f11870b.c(th2);
            }
        }

        public a(hn.c<? super T> cVar) {
            this.f11862b = cVar;
        }

        @Override
        public void a() {
            this.f11867g = true;
            if (this.f11868h) {
                io.reactivex.internal.util.k.b(this.f11862b, this, this.f11865e);
            }
        }

        public void b() {
            this.f11868h = true;
            if (this.f11867g) {
                io.reactivex.internal.util.k.b(this.f11862b, this, this.f11865e);
            }
        }

        public void c(Throwable th2) {
            Ue.j.a(this.f11863c);
            io.reactivex.internal.util.k.d(this.f11862b, th2, this, this.f11865e);
        }

        @Override
        public void cancel() {
            Ue.j.a(this.f11863c);
            Ge.d.a(this.f11864d);
        }

        @Override
        public void h(T t10) {
            io.reactivex.internal.util.k.f(this.f11862b, t10, this, this.f11865e);
        }

        @Override
        public void i(long j10) {
            Ue.j.b(this.f11863c, this.f11866f, j10);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.c(this.f11863c, this.f11866f, dVar);
        }

        @Override
        public void onError(Throwable th2) {
            Ue.j.a(this.f11863c);
            io.reactivex.internal.util.k.d(this.f11862b, th2, this, this.f11865e);
        }
    }

    public G0(AbstractC2362l<T> abstractC2362l, InterfaceC2359i interfaceC2359i) {
        super(abstractC2362l);
        this.f11860d = interfaceC2359i;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        a aVar = new a(cVar);
        cVar.j(aVar);
        this.f12507c.l6(aVar);
        this.f11860d.b(aVar.f11864d);
    }
}
