package i1;

import android.app.Application;
import android.os.Handler;
import java.util.concurrent.Executor;

public final class P implements InterfaceC13561l0<O> {

    public final p0<Application> f91240a;

    public final p0<K> f91241b;

    public final p0<Handler> f91242c;

    public final p0<Executor> f91243d;

    public final p0<u0> f91244e;

    public final p0<C13560l> f91245f;

    public final p0<C13577z> f91246g;

    public final p0<C13564n> f91247h;

    public P(p0<Application> p0Var, p0<K> p0Var2, p0<Handler> p0Var3, p0<Executor> p0Var4, p0<u0> p0Var5, p0<C13560l> p0Var6, p0<C13577z> p0Var7, p0<C13564n> p0Var8) {
        this.f91240a = p0Var;
        this.f91241b = p0Var2;
        this.f91242c = p0Var3;
        this.f91243d = p0Var4;
        this.f91244e = p0Var5;
        this.f91245f = p0Var6;
        this.f91246g = p0Var7;
        this.f91247h = p0Var8;
    }

    @Override
    public final O O1() {
        Application O12 = this.f91240a.O1();
        K O13 = this.f91241b.O1();
        Handler handler = C13553h0.f91303a;
        C13567o0.a(handler);
        Executor executor = C13553h0.f91304b;
        C13567o0.a(executor);
        return new O(O12, O13, handler, executor, this.f91244e.O1(), ((C13562m) this.f91245f).O1(), this.f91246g.O1(), this.f91247h.O1());
    }
}
