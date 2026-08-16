package Qe;

public final class C3000s<T> extends Be.K<T> {

    public final Be.Q<T> f22295b;

    public final Fe.g<? super De.c> f22296c;

    public static final class a<T> implements Be.N<T> {

        public final Be.N<? super T> f22297b;

        public final Fe.g<? super De.c> f22298c;

        public boolean f22299d;

        public a(Be.N<? super T> n10, Fe.g<? super De.c> gVar) {
            this.f22297b = n10;
            this.f22298c = gVar;
        }

        @Override
        public void b(T t10) {
            if (this.f22299d) {
                return;
            }
            this.f22297b.b(t10);
        }

        @Override
        public void e(De.c cVar) {
            try {
                this.f22298c.accept(cVar);
                this.f22297b.e(cVar);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f22299d = true;
                cVar.dispose();
                Ge.e.i(th2, this.f22297b);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f22299d) {
                Ye.a.Y(th2);
            } else {
                this.f22297b.onError(th2);
            }
        }
    }

    public C3000s(Be.Q<T> q10, Fe.g<? super De.c> gVar) {
        this.f22295b = q10;
        this.f22296c = gVar;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22295b.a(new a(n10, this.f22296c));
    }
}
