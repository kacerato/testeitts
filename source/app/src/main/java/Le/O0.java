package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicLong;

public final class O0<T> extends AbstractC2692a<T, T> {

    public static final class a<T> extends AtomicLong implements InterfaceC2367q<T>, hn.d {

        public static final long f12136e = -3176480756392482682L;

        public final hn.c<? super T> f12137b;

        public hn.d f12138c;

        public boolean f12139d;

        public a(hn.c<? super T> cVar) {
            this.f12137b = cVar;
        }

        @Override
        public void a() {
            if (this.f12139d) {
                return;
            }
            this.f12139d = true;
            this.f12137b.a();
        }

        @Override
        public void cancel() {
            this.f12138c.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f12139d) {
                return;
            }
            if (get() == 0) {
                onError(new MissingBackpressureException("could not emit value due to lack of requests"));
            } else {
                this.f12137b.h(t10);
                io.reactivex.internal.util.d.e(this, 1L);
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this, j10);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12138c, dVar)) {
                this.f12138c = dVar;
                this.f12137b.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12139d) {
                Ye.a.Y(th2);
            } else {
                this.f12139d = true;
                this.f12137b.onError(th2);
            }
        }
    }

    public O0(AbstractC2362l<T> abstractC2362l) {
        super(abstractC2362l);
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar));
    }
}
