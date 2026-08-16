package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class C2762x1<T> extends AbstractC2692a<T, T> {

    public final Fe.r<? super T> f13377d;

    public static final class a<T> implements InterfaceC2367q<T>, hn.d {

        public final hn.c<? super T> f13378b;

        public final Fe.r<? super T> f13379c;

        public hn.d f13380d;

        public boolean f13381e;

        public a(hn.c<? super T> cVar, Fe.r<? super T> rVar) {
            this.f13378b = cVar;
            this.f13379c = rVar;
        }

        @Override
        public void a() {
            this.f13378b.a();
        }

        @Override
        public void cancel() {
            this.f13380d.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f13381e) {
                this.f13378b.h(t10);
                return;
            }
            try {
                if (this.f13379c.test(t10)) {
                    this.f13380d.i(1L);
                } else {
                    this.f13381e = true;
                    this.f13378b.h(t10);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f13380d.cancel();
                this.f13378b.onError(th2);
            }
        }

        @Override
        public void i(long j10) {
            this.f13380d.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13380d, dVar)) {
                this.f13380d = dVar;
                this.f13378b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f13378b.onError(th2);
        }
    }

    public C2762x1(AbstractC2362l<T> abstractC2362l, Fe.r<? super T> rVar) {
        super(abstractC2362l);
        this.f13377d = rVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12507c.l6(new a(cVar, this.f13377d));
    }
}
