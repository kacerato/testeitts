package Te;

import Be.InterfaceC2367q;

public abstract class h<T, R> extends Ue.f<R> implements InterfaceC2367q<T> {

    public static final long f24855p = 2984505488220891551L;

    public hn.d f24856n;

    public boolean f24857o;

    public h(hn.c<? super R> cVar) {
        super(cVar);
    }

    public void a() {
        if (this.f24857o) {
            d(this.f26034d);
        } else {
            this.f26033c.a();
        }
    }

    @Override
    public void cancel() {
        super.cancel();
        this.f24856n.cancel();
    }

    public void j(hn.d dVar) {
        if (Ue.j.o(this.f24856n, dVar)) {
            this.f24856n = dVar;
            this.f26033c.j(this);
            dVar.i(Long.MAX_VALUE);
        }
    }

    public void onError(Throwable th2) {
        this.f26034d = null;
        this.f26033c.onError(th2);
    }
}
