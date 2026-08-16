package i1;

import android.os.Handler;

public final class J implements InterfaceC13561l0<I> {

    public final p0<K> f91198a;

    public final p0<Handler> f91199b;

    public final p0<O> f91200c;

    public J(p0<K> p0Var, p0<Handler> p0Var2, p0<O> p0Var3) {
        this.f91198a = p0Var;
        this.f91199b = p0Var2;
        this.f91200c = p0Var3;
    }

    @Override
    public final I O1() {
        K O12 = this.f91198a.O1();
        Handler handler = C13553h0.f91303a;
        C13567o0.a(handler);
        return new I(O12, handler, ((P) this.f91200c).O1());
    }
}
