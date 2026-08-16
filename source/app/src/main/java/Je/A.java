package Je;

import Be.InterfaceC2356f;

public final class A<T> implements InterfaceC2356f, hn.d {

    public final hn.c<? super T> f10451b;

    public De.c f10452c;

    public A(hn.c<? super T> cVar) {
        this.f10451b = cVar;
    }

    @Override
    public void a() {
        this.f10451b.a();
    }

    @Override
    public void cancel() {
        this.f10452c.dispose();
    }

    @Override
    public void e(De.c cVar) {
        if (Ge.d.j(this.f10452c, cVar)) {
            this.f10452c = cVar;
            this.f10451b.j(this);
        }
    }

    @Override
    public void i(long j10) {
    }

    @Override
    public void onError(Throwable th2) {
        this.f10451b.onError(th2);
    }
}
