package Je;

import Be.I;

public abstract class m<T, R> extends l<R> implements I<T> {

    public static final long f10486l = -266195175408988651L;

    public De.c f10487k;

    public m(I<? super R> i10) {
        super(i10);
    }

    @Override
    public void a() {
        T t10 = this.f10485d;
        if (t10 == null) {
            c();
        } else {
            this.f10485d = null;
            f(t10);
        }
    }

    @Override
    public void dispose() {
        super.dispose();
        this.f10487k.dispose();
    }

    @Override
    public void e(De.c cVar) {
        if (Ge.d.j(this.f10487k, cVar)) {
            this.f10487k = cVar;
            this.f10484c.e(this);
        }
    }

    @Override
    public void onError(Throwable th2) {
        this.f10485d = null;
        i(th2);
    }
}
