package Qe;

import Be.AbstractC2368s;

@Ce.e
public final class C2993k<T, R> extends AbstractC2368s<R> {

    public final Be.K<T> f22258b;

    public final Fe.o<? super T, Be.A<R>> f22259c;

    public static final class a<T, R> implements Be.N<T>, De.c {

        public final Be.v<? super R> f22260b;

        public final Fe.o<? super T, Be.A<R>> f22261c;

        public De.c f22262d;

        public a(Be.v<? super R> vVar, Fe.o<? super T, Be.A<R>> oVar) {
            this.f22260b = vVar;
            this.f22261c = oVar;
        }

        @Override
        public void b(T t10) {
            try {
                Be.A a10 = (Be.A) He.b.g(this.f22261c.apply(t10), "The selector returned a null Notification");
                if (a10.h()) {
                    this.f22260b.b((Object) a10.e());
                } else if (a10.f()) {
                    this.f22260b.a();
                } else {
                    this.f22260b.onError(a10.d());
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f22260b.onError(th2);
            }
        }

        @Override
        public boolean d() {
            return this.f22262d.d();
        }

        @Override
        public void dispose() {
            this.f22262d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f22262d, cVar)) {
                this.f22262d = cVar;
                this.f22260b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f22260b.onError(th2);
        }
    }

    public C2993k(Be.K<T> k10, Fe.o<? super T, Be.A<R>> oVar) {
        this.f22258b = k10;
        this.f22259c = oVar;
    }

    @Override
    public void t1(Be.v<? super R> vVar) {
        this.f22258b.a(new a(vVar, this.f22259c));
    }
}
