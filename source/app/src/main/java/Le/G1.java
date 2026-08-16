package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class G1<T, U> extends AbstractC2692a<T, T> {

    public final hn.b<? extends U> f11871d;

    public static final class a<T> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f11872g = -4945480365982832967L;

        public final hn.c<? super T> f11873b;

        public final AtomicLong f11874c = new AtomicLong();

        public final AtomicReference<hn.d> f11875d = new AtomicReference<>();

        public final a<T>.C0385a f11877f = new C0385a();

        public final io.reactivex.internal.util.c f11876e = new io.reactivex.internal.util.c();

        public final class C0385a extends AtomicReference<hn.d> implements InterfaceC2367q<Object> {

            public static final long f11878c = -3592821756711087922L;

            public C0385a() {
            }

            @Override
            public void a() {
                Ue.j.a(a.this.f11875d);
                a aVar = a.this;
                io.reactivex.internal.util.k.b(aVar.f11873b, aVar, aVar.f11876e);
            }

            @Override
            public void h(Object obj) {
                Ue.j.a(this);
                a();
            }

            @Override
            public void j(hn.d dVar) {
                Ue.j.k(this, dVar, Long.MAX_VALUE);
            }

            @Override
            public void onError(Throwable th2) {
                Ue.j.a(a.this.f11875d);
                a aVar = a.this;
                io.reactivex.internal.util.k.d(aVar.f11873b, th2, aVar, aVar.f11876e);
            }
        }

        public a(hn.c<? super T> cVar) {
            this.f11873b = cVar;
        }

        @Override
        public void a() {
            Ue.j.a(this.f11877f);
            io.reactivex.internal.util.k.b(this.f11873b, this, this.f11876e);
        }

        @Override
        public void cancel() {
            Ue.j.a(this.f11875d);
            Ue.j.a(this.f11877f);
        }

        @Override
        public void h(T t10) {
            io.reactivex.internal.util.k.f(this.f11873b, t10, this, this.f11876e);
        }

        @Override
        public void i(long j10) {
            Ue.j.b(this.f11875d, this.f11874c, j10);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.c(this.f11875d, this.f11874c, dVar);
        }

        @Override
        public void onError(Throwable th2) {
            Ue.j.a(this.f11877f);
            io.reactivex.internal.util.k.d(this.f11873b, th2, this, this.f11876e);
        }
    }

    public G1(AbstractC2362l<T> abstractC2362l, hn.b<? extends U> bVar) {
        super(abstractC2362l);
        this.f11871d = bVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        a aVar = new a(cVar);
        cVar.j(aVar);
        this.f11871d.l(aVar.f11877f);
        this.f12507c.l6(aVar);
    }
}
