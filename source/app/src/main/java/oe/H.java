package Oe;

public final class H<T, U> extends Be.B<T> {

    public final Be.G<? extends T> f18881b;

    public final Be.G<U> f18882c;

    public final class a implements Be.I<U> {

        public final Ge.h f18883b;

        public final Be.I<? super T> f18884c;

        public boolean f18885d;

        public final class C0479a implements Be.I<T> {
            public C0479a() {
            }

            @Override
            public void a() {
                a.this.f18884c.a();
            }

            @Override
            public void e(De.c cVar) {
                a.this.f18883b.b(cVar);
            }

            @Override
            public void h(T t10) {
                a.this.f18884c.h(t10);
            }

            @Override
            public void onError(Throwable th2) {
                a.this.f18884c.onError(th2);
            }
        }

        public a(Ge.h hVar, Be.I<? super T> i10) {
            this.f18883b = hVar;
            this.f18884c = i10;
        }

        @Override
        public void a() {
            if (this.f18885d) {
                return;
            }
            this.f18885d = true;
            H.this.f18881b.c(new C0479a());
        }

        @Override
        public void e(De.c cVar) {
            this.f18883b.b(cVar);
        }

        @Override
        public void h(U u10) {
            a();
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f18885d) {
                Ye.a.Y(th2);
            } else {
                this.f18885d = true;
                this.f18884c.onError(th2);
            }
        }
    }

    public H(Be.G<? extends T> g10, Be.G<U> g11) {
        this.f18881b = g10;
        this.f18882c = g11;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        Ge.h hVar = new Ge.h();
        i10.e(hVar);
        this.f18882c.c(new a(hVar, i10));
    }
}
