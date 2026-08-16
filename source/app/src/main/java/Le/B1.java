package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicBoolean;

public final class B1<T> extends AbstractC2692a<T, T> {

    public final long f11759d;

    public static final class a<T> extends AtomicBoolean implements InterfaceC2367q<T>, hn.d {

        public static final long f11760g = -5636543848937116287L;

        public final hn.c<? super T> f11761b;

        public final long f11762c;

        public boolean f11763d;

        public hn.d f11764e;

        public long f11765f;

        public a(hn.c<? super T> cVar, long j10) {
            this.f11761b = cVar;
            this.f11762c = j10;
            this.f11765f = j10;
        }

        @Override
        public void a() {
            if (this.f11763d) {
                return;
            }
            this.f11763d = true;
            this.f11761b.a();
        }

        @Override
        public void cancel() {
            this.f11764e.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f11763d) {
                return;
            }
            long j10 = this.f11765f;
            long j11 = j10 - 1;
            this.f11765f = j11;
            if (j10 > 0) {
                boolean z10 = j11 == 0;
                this.f11761b.h(t10);
                if (z10) {
                    this.f11764e.cancel();
                    a();
                }
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                if (get() || !compareAndSet(false, true) || j10 < this.f11762c) {
                    this.f11764e.i(j10);
                } else {
                    this.f11764e.i(Long.MAX_VALUE);
                }
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11764e, dVar)) {
                this.f11764e = dVar;
                if (this.f11762c != 0) {
                    this.f11761b.j(this);
                    return;
                }
                dVar.cancel();
                this.f11763d = true;
                Ue.g.a(this.f11761b);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f11763d) {
                Ye.a.Y(th2);
                return;
            }
            this.f11763d = true;
            this.f11764e.cancel();
            this.f11761b.onError(th2);
        }
    }

    public B1(AbstractC2362l<T> abstractC2362l, long j10) {
        super(abstractC2362l);
        this.f11759d = j10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f11759d));
    }
}
