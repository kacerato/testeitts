package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class H1<T> extends AbstractC2692a<T, T> {

    public final Fe.r<? super T> f11917d;

    public static final class a<T> implements InterfaceC2367q<T>, hn.d {

        public final hn.c<? super T> f11918b;

        public final Fe.r<? super T> f11919c;

        public hn.d f11920d;

        public boolean f11921e;

        public a(hn.c<? super T> cVar, Fe.r<? super T> rVar) {
            this.f11918b = cVar;
            this.f11919c = rVar;
        }

        @Override
        public void a() {
            if (this.f11921e) {
                return;
            }
            this.f11921e = true;
            this.f11918b.a();
        }

        @Override
        public void cancel() {
            this.f11920d.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f11921e) {
                return;
            }
            this.f11918b.h(t10);
            try {
                if (this.f11919c.test(t10)) {
                    this.f11921e = true;
                    this.f11920d.cancel();
                    this.f11918b.a();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f11920d.cancel();
                onError(th2);
            }
        }

        @Override
        public void i(long j10) {
            this.f11920d.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11920d, dVar)) {
                this.f11920d = dVar;
                this.f11918b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f11921e) {
                Ye.a.Y(th2);
            } else {
                this.f11921e = true;
                this.f11918b.onError(th2);
            }
        }
    }

    public H1(AbstractC2362l<T> abstractC2362l, Fe.r<? super T> rVar) {
        super(abstractC2362l);
        this.f11917d = rVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f11917d));
    }
}
