package Me;

import java.util.concurrent.atomic.AtomicReference;

public final class H<T, R> extends AbstractC2815a<T, R> {

    public final Fe.o<? super T, ? extends Be.y<? extends R>> f14921c;

    public static final class a<T, R> extends AtomicReference<De.c> implements Be.v<T>, De.c {

        public static final long f14922e = 4375739915521278546L;

        public final Be.v<? super R> f14923b;

        public final Fe.o<? super T, ? extends Be.y<? extends R>> f14924c;

        public De.c f14925d;

        public final class C0426a implements Be.v<R> {
            public C0426a() {
            }

            @Override
            public void a() {
                a.this.f14923b.a();
            }

            @Override
            public void b(R r10) {
                a.this.f14923b.b(r10);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(a.this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                a.this.f14923b.onError(th2);
            }
        }

        public a(Be.v<? super R> vVar, Fe.o<? super T, ? extends Be.y<? extends R>> oVar) {
            this.f14923b = vVar;
            this.f14924c = oVar;
        }

        @Override
        public void a() {
            this.f14923b.a();
        }

        @Override
        public void b(T t10) {
            try {
                Be.y yVar = (Be.y) He.b.g(this.f14924c.apply(t10), "The mapper returned a null MaybeSource");
                if (d()) {
                    return;
                }
                yVar.d(new C0426a());
            } catch (Exception e10) {
                io.reactivex.exceptions.a.b(e10);
                this.f14923b.onError(e10);
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
            this.f14925d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f14925d, cVar)) {
                this.f14925d = cVar;
                this.f14923b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f14923b.onError(th2);
        }
    }

    public H(Be.y<T> yVar, Fe.o<? super T, ? extends Be.y<? extends R>> oVar) {
        super(yVar);
        this.f14921c = oVar;
    }

    @Override
    public void t1(Be.v<? super R> vVar) {
        this.f14976b.d(new a(vVar, this.f14921c));
    }
}
