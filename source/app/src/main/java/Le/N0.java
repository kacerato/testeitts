package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicLong;

public final class N0<T> extends AbstractC2692a<T, T> implements Fe.g<T> {

    public final Fe.g<? super T> f12094d;

    public static final class a<T> extends AtomicLong implements InterfaceC2367q<T>, hn.d {

        public static final long f12095f = -6246093802440953054L;

        public final hn.c<? super T> f12096b;

        public final Fe.g<? super T> f12097c;

        public hn.d f12098d;

        public boolean f12099e;

        public a(hn.c<? super T> cVar, Fe.g<? super T> gVar) {
            this.f12096b = cVar;
            this.f12097c = gVar;
        }

        @Override
        public void a() {
            if (this.f12099e) {
                return;
            }
            this.f12099e = true;
            this.f12096b.a();
        }

        @Override
        public void cancel() {
            this.f12098d.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f12099e) {
                return;
            }
            if (get() != 0) {
                this.f12096b.h(t10);
                io.reactivex.internal.util.d.e(this, 1L);
                return;
            }
            try {
                this.f12097c.accept(t10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                cancel();
                onError(th2);
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
            if (Ue.j.o(this.f12098d, dVar)) {
                this.f12098d = dVar;
                this.f12096b.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12099e) {
                Ye.a.Y(th2);
            } else {
                this.f12099e = true;
                this.f12096b.onError(th2);
            }
        }
    }

    public N0(AbstractC2362l<T> abstractC2362l) {
        super(abstractC2362l);
        this.f12094d = this;
    }

    @Override
    public void accept(T t10) {
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f12094d));
    }

    public N0(AbstractC2362l<T> abstractC2362l, Fe.g<? super T> gVar) {
        super(abstractC2362l);
        this.f12094d = gVar;
    }
}
