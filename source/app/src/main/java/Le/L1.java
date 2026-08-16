package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import af.C3606d;
import java.util.concurrent.TimeUnit;

public final class L1<T> extends AbstractC2692a<T, C3606d<T>> {

    public final Be.J f12046d;

    public final TimeUnit f12047e;

    public static final class a<T> implements InterfaceC2367q<T>, hn.d {

        public final hn.c<? super C3606d<T>> f12048b;

        public final TimeUnit f12049c;

        public final Be.J f12050d;

        public hn.d f12051e;

        public long f12052f;

        public a(hn.c<? super C3606d<T>> cVar, TimeUnit timeUnit, Be.J j10) {
            this.f12048b = cVar;
            this.f12050d = j10;
            this.f12049c = timeUnit;
        }

        @Override
        public void a() {
            this.f12048b.a();
        }

        @Override
        public void cancel() {
            this.f12051e.cancel();
        }

        @Override
        public void h(T t10) {
            long e10 = this.f12050d.e(this.f12049c);
            long j10 = this.f12052f;
            this.f12052f = e10;
            this.f12048b.h(new C3606d(t10, e10 - j10, this.f12049c));
        }

        @Override
        public void i(long j10) {
            this.f12051e.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12051e, dVar)) {
                this.f12052f = this.f12050d.e(this.f12049c);
                this.f12051e = dVar;
                this.f12048b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f12048b.onError(th2);
        }
    }

    public L1(AbstractC2362l<T> abstractC2362l, TimeUnit timeUnit, Be.J j10) {
        super(abstractC2362l);
        this.f12046d = j10;
        this.f12047e = timeUnit;
    }

    @Override
    public void m6(hn.c<? super C3606d<T>> cVar) {
        this.f12507c.l6(new a(cVar, this.f12047e, this.f12046d));
    }
}
