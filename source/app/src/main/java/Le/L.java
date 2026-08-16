package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class L<T, R> extends AbstractC2692a<T, R> {

    public final Fe.o<? super T, ? extends Be.A<R>> f12026d;

    public static final class a<T, R> implements InterfaceC2367q<T>, hn.d {

        public final hn.c<? super R> f12027b;

        public final Fe.o<? super T, ? extends Be.A<R>> f12028c;

        public boolean f12029d;

        public hn.d f12030e;

        public a(hn.c<? super R> cVar, Fe.o<? super T, ? extends Be.A<R>> oVar) {
            this.f12027b = cVar;
            this.f12028c = oVar;
        }

        @Override
        public void a() {
            if (this.f12029d) {
                return;
            }
            this.f12029d = true;
            this.f12027b.a();
        }

        @Override
        public void cancel() {
            this.f12030e.cancel();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void h(T t10) {
            if (this.f12029d) {
                if (t10 instanceof Be.A) {
                    Be.A a10 = (Be.A) t10;
                    if (a10.g()) {
                        Ye.a.Y(a10.d());
                        return;
                    }
                    return;
                }
                return;
            }
            try {
                Be.A a11 = (Be.A) He.b.g(this.f12028c.apply(t10), "The selector returned a null Notification");
                if (a11.g()) {
                    this.f12030e.cancel();
                    onError(a11.d());
                } else if (!a11.f()) {
                    this.f12027b.h((Object) a11.e());
                } else {
                    this.f12030e.cancel();
                    a();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f12030e.cancel();
                onError(th2);
            }
        }

        @Override
        public void i(long j10) {
            this.f12030e.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12030e, dVar)) {
                this.f12030e = dVar;
                this.f12027b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12029d) {
                Ye.a.Y(th2);
            } else {
                this.f12029d = true;
                this.f12027b.onError(th2);
            }
        }
    }

    public L(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends Be.A<R>> oVar) {
        super(abstractC2362l);
        this.f12026d = oVar;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        this.f12507c.l6(new a(cVar, this.f12026d));
    }
}
