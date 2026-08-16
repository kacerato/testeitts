package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class C2750t1<T> extends AbstractC2692a<T, T> {

    public final long f13216d;

    public static final class a<T> implements InterfaceC2367q<T>, hn.d {

        public final hn.c<? super T> f13217b;

        public long f13218c;

        public hn.d f13219d;

        public a(hn.c<? super T> cVar, long j10) {
            this.f13217b = cVar;
            this.f13218c = j10;
        }

        @Override
        public void a() {
            this.f13217b.a();
        }

        @Override
        public void cancel() {
            this.f13219d.cancel();
        }

        @Override
        public void h(T t10) {
            long j10 = this.f13218c;
            if (j10 != 0) {
                this.f13218c = j10 - 1;
            } else {
                this.f13217b.h(t10);
            }
        }

        @Override
        public void i(long j10) {
            this.f13219d.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13219d, dVar)) {
                long j10 = this.f13218c;
                this.f13219d = dVar;
                this.f13217b.j(this);
                dVar.i(j10);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f13217b.onError(th2);
        }
    }

    public C2750t1(AbstractC2362l<T> abstractC2362l, long j10) {
        super(abstractC2362l);
        this.f13216d = j10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f13216d));
    }
}
