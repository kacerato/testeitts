package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class I1<T> extends AbstractC2692a<T, T> {

    public final Fe.r<? super T> f11943d;

    public static final class a<T> implements InterfaceC2367q<T>, hn.d {

        public final hn.c<? super T> f11944b;

        public final Fe.r<? super T> f11945c;

        public hn.d f11946d;

        public boolean f11947e;

        public a(hn.c<? super T> cVar, Fe.r<? super T> rVar) {
            this.f11944b = cVar;
            this.f11945c = rVar;
        }

        @Override
        public void a() {
            if (this.f11947e) {
                return;
            }
            this.f11947e = true;
            this.f11944b.a();
        }

        @Override
        public void cancel() {
            this.f11946d.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f11947e) {
                return;
            }
            try {
                if (this.f11945c.test(t10)) {
                    this.f11944b.h(t10);
                    return;
                }
                this.f11947e = true;
                this.f11946d.cancel();
                this.f11944b.a();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f11946d.cancel();
                onError(th2);
            }
        }

        @Override
        public void i(long j10) {
            this.f11946d.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11946d, dVar)) {
                this.f11946d = dVar;
                this.f11944b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f11947e) {
                Ye.a.Y(th2);
            } else {
                this.f11947e = true;
                this.f11944b.onError(th2);
            }
        }
    }

    public I1(AbstractC2362l<T> abstractC2362l, Fe.r<? super T> rVar) {
        super(abstractC2362l);
        this.f11943d = rVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f11943d));
    }
}
