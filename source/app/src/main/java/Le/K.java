package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class K<T, U> extends AbstractC2362l<T> {

    public final hn.b<? extends T> f11976c;

    public final hn.b<U> f11977d;

    public static final class a<T> extends AtomicLong implements InterfaceC2367q<T>, hn.d {

        public static final long f11978f = 2259811067697317255L;

        public final hn.c<? super T> f11979b;

        public final hn.b<? extends T> f11980c;

        public final a<T>.C0389a f11981d = new C0389a();

        public final AtomicReference<hn.d> f11982e = new AtomicReference<>();

        public final class C0389a extends AtomicReference<hn.d> implements InterfaceC2367q<Object> {

            public static final long f11983c = -3892798459447644106L;

            public C0389a() {
            }

            @Override
            public void a() {
                if (get() != Ue.j.CANCELLED) {
                    a.this.b();
                }
            }

            @Override
            public void h(Object obj) {
                hn.d dVar = get();
                Ue.j jVar = Ue.j.CANCELLED;
                if (dVar != jVar) {
                    lazySet(jVar);
                    dVar.cancel();
                    a.this.b();
                }
            }

            @Override
            public void j(hn.d dVar) {
                if (Ue.j.j(this, dVar)) {
                    dVar.i(Long.MAX_VALUE);
                }
            }

            @Override
            public void onError(Throwable th2) {
                if (get() != Ue.j.CANCELLED) {
                    a.this.f11979b.onError(th2);
                } else {
                    Ye.a.Y(th2);
                }
            }
        }

        public a(hn.c<? super T> cVar, hn.b<? extends T> bVar) {
            this.f11979b = cVar;
            this.f11980c = bVar;
        }

        @Override
        public void a() {
            this.f11979b.a();
        }

        public void b() {
            this.f11980c.l(this);
        }

        @Override
        public void cancel() {
            Ue.j.a(this.f11981d);
            Ue.j.a(this.f11982e);
        }

        @Override
        public void h(T t10) {
            this.f11979b.h(t10);
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                Ue.j.b(this.f11982e, this, j10);
            }
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.c(this.f11982e, this, dVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f11979b.onError(th2);
        }
    }

    public K(hn.b<? extends T> bVar, hn.b<U> bVar2) {
        this.f11976c = bVar;
        this.f11977d = bVar2;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        a aVar = new a(cVar, this.f11976c);
        cVar.j(aVar);
        this.f11977d.l(aVar.f11981d);
    }
}
