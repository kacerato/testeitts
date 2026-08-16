package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import cf.C4186e;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class Y1<T, U, R> extends AbstractC2692a<T, R> {

    public final Fe.c<? super T, ? super U, ? extends R> f12474d;

    public final hn.b<? extends U> f12475e;

    public final class a implements InterfaceC2367q<U> {

        public final b<T, U, R> f12476b;

        public a(b<T, U, R> bVar) {
            this.f12476b = bVar;
        }

        @Override
        public void a() {
        }

        @Override
        public void h(U u10) {
            this.f12476b.lazySet(u10);
        }

        @Override
        public void j(hn.d dVar) {
            if (this.f12476b.c(dVar)) {
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f12476b.b(th2);
        }
    }

    public static final class b<T, U, R> extends AtomicReference<U> implements Ie.a<T>, hn.d {

        public static final long f12478g = -312246233408980075L;

        public final hn.c<? super R> f12479b;

        public final Fe.c<? super T, ? super U, ? extends R> f12480c;

        public final AtomicReference<hn.d> f12481d = new AtomicReference<>();

        public final AtomicLong f12482e = new AtomicLong();

        public final AtomicReference<hn.d> f12483f = new AtomicReference<>();

        public b(hn.c<? super R> cVar, Fe.c<? super T, ? super U, ? extends R> cVar2) {
            this.f12479b = cVar;
            this.f12480c = cVar2;
        }

        @Override
        public void a() {
            Ue.j.a(this.f12483f);
            this.f12479b.a();
        }

        public void b(Throwable th2) {
            Ue.j.a(this.f12481d);
            this.f12479b.onError(th2);
        }

        public boolean c(hn.d dVar) {
            return Ue.j.j(this.f12483f, dVar);
        }

        @Override
        public void cancel() {
            Ue.j.a(this.f12481d);
            Ue.j.a(this.f12483f);
        }

        @Override
        public void h(T t10) {
            if (u(t10)) {
                return;
            }
            this.f12481d.get().i(1L);
        }

        @Override
        public void i(long j10) {
            Ue.j.b(this.f12481d, this.f12482e, j10);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.c(this.f12481d, this.f12482e, dVar);
        }

        @Override
        public void onError(Throwable th2) {
            Ue.j.a(this.f12483f);
            this.f12479b.onError(th2);
        }

        @Override
        public boolean u(T t10) {
            U u10 = get();
            if (u10 != null) {
                try {
                    this.f12479b.h(He.b.g(this.f12480c.apply(t10, u10), "The combiner returned a null value"));
                    return true;
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    cancel();
                    this.f12479b.onError(th2);
                }
            }
            return false;
        }
    }

    public Y1(AbstractC2362l<T> abstractC2362l, Fe.c<? super T, ? super U, ? extends R> cVar, hn.b<? extends U> bVar) {
        super(abstractC2362l);
        this.f12474d = cVar;
        this.f12475e = bVar;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        C4186e c4186e = new C4186e(cVar);
        b bVar = new b(c4186e, this.f12474d);
        c4186e.j(bVar);
        this.f12475e.l(new a(bVar));
        this.f12507c.l6(bVar);
    }
}
