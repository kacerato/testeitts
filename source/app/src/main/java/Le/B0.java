package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicLong;

public final class B0<T> extends AbstractC2692a<T, T> {

    public final long f11754d;

    public static final class a<T> extends AtomicLong implements InterfaceC2367q<T>, hn.d {

        public static final long f11755e = 2288246011222124525L;

        public final hn.c<? super T> f11756b;

        public long f11757c;

        public hn.d f11758d;

        public a(hn.c<? super T> cVar, long j10) {
            this.f11756b = cVar;
            this.f11757c = j10;
            lazySet(j10);
        }

        @Override
        public void a() {
            if (this.f11757c > 0) {
                this.f11757c = 0L;
                this.f11756b.a();
            }
        }

        @Override
        public void cancel() {
            this.f11758d.cancel();
        }

        @Override
        public void h(T t10) {
            long j10 = this.f11757c;
            if (j10 > 0) {
                long j11 = j10 - 1;
                this.f11757c = j11;
                this.f11756b.h(t10);
                if (j11 == 0) {
                    this.f11758d.cancel();
                    this.f11756b.a();
                }
            }
        }

        @Override
        public void i(long j10) {
            long j11;
            long j12;
            if (!Ue.j.m(j10)) {
                return;
            }
            do {
                j11 = get();
                if (j11 == 0) {
                    return;
                } else {
                    j12 = j11 <= j10 ? j11 : j10;
                }
            } while (!compareAndSet(j11, j11 - j12));
            this.f11758d.i(j12);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11758d, dVar)) {
                if (this.f11757c == 0) {
                    dVar.cancel();
                    Ue.g.a(this.f11756b);
                } else {
                    this.f11758d = dVar;
                    this.f11756b.j(this);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f11757c <= 0) {
                Ye.a.Y(th2);
            } else {
                this.f11757c = 0L;
                this.f11756b.onError(th2);
            }
        }
    }

    public B0(AbstractC2362l<T> abstractC2362l, long j10) {
        super(abstractC2362l);
        this.f11754d = j10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f11754d));
    }
}
