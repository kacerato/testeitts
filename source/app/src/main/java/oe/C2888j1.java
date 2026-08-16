package Oe;

public final class C2888j1<T, U> extends AbstractC2859a<T, T> {

    public final Be.G<U> f19549c;

    public final class a implements Be.I<U> {

        public final Ge.a f19550b;

        public final b<T> f19551c;

        public final We.m<T> f19552d;

        public De.c f19553e;

        public a(Ge.a aVar, b<T> bVar, We.m<T> mVar) {
            this.f19550b = aVar;
            this.f19551c = bVar;
            this.f19552d = mVar;
        }

        @Override
        public void a() {
            this.f19551c.f19558e = true;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19553e, cVar)) {
                this.f19553e = cVar;
                this.f19550b.b(1, cVar);
            }
        }

        @Override
        public void h(U u10) {
            this.f19553e.dispose();
            this.f19551c.f19558e = true;
        }

        @Override
        public void onError(Throwable th2) {
            this.f19550b.dispose();
            this.f19552d.onError(th2);
        }
    }

    public static final class b<T> implements Be.I<T> {

        public final Be.I<? super T> f19555b;

        public final Ge.a f19556c;

        public De.c f19557d;

        public volatile boolean f19558e;

        public boolean f19559f;

        public b(Be.I<? super T> i10, Ge.a aVar) {
            this.f19555b = i10;
            this.f19556c = aVar;
        }

        @Override
        public void a() {
            this.f19556c.dispose();
            this.f19555b.a();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19557d, cVar)) {
                this.f19557d = cVar;
                this.f19556c.b(0, cVar);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19559f) {
                this.f19555b.h(t10);
            } else if (this.f19558e) {
                this.f19559f = true;
                this.f19555b.h(t10);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f19556c.dispose();
            this.f19555b.onError(th2);
        }
    }

    public C2888j1(Be.G<T> g10, Be.G<U> g11) {
        super(g10);
        this.f19549c = g11;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        We.m mVar = new We.m(i10);
        Ge.a aVar = new Ge.a(2);
        mVar.e(aVar);
        b bVar = new b(mVar, aVar);
        this.f19549c.c(new a(aVar, bVar, mVar));
        this.f19344b.c(bVar);
    }
}
