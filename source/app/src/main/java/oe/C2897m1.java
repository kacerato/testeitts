package Oe;

public final class C2897m1<T> extends AbstractC2859a<T, T> {

    public final Be.G<? extends T> f19648c;

    public static final class a<T> implements Be.I<T> {

        public final Be.I<? super T> f19649b;

        public final Be.G<? extends T> f19650c;

        public boolean f19652e = true;

        public final Ge.h f19651d = new Ge.h();

        public a(Be.I<? super T> i10, Be.G<? extends T> g10) {
            this.f19649b = i10;
            this.f19650c = g10;
        }

        @Override
        public void a() {
            if (!this.f19652e) {
                this.f19649b.a();
            } else {
                this.f19652e = false;
                this.f19650c.c(this);
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f19651d.b(cVar);
        }

        @Override
        public void h(T t10) {
            if (this.f19652e) {
                this.f19652e = false;
            }
            this.f19649b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f19649b.onError(th2);
        }
    }

    public C2897m1(Be.G<T> g10, Be.G<? extends T> g11) {
        super(g10);
        this.f19648c = g11;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        a aVar = new a(i10, this.f19648c);
        i10.e(aVar.f19651d);
        this.f19344b.c(aVar);
    }
}
