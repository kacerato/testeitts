package i1;

import android.app.Application;
import android.os.Handler;
import java.util.concurrent.Executor;

public final class L0 implements InterfaceC13561l0<K0> {

    public final p0<Application> f91213a;

    public final p0<C13544d> f91214b;

    public final p0<Handler> f91215c;

    public final p0<Executor> f91216d;

    public final p0<C13564n> f91217e;

    public final p0<C> f91218f;

    public final p0<z0> f91219g;

    public final p0<O0> f91220h;

    public final p0<u0> f91221i;

    public L0(p0<Application> p0Var, p0<C13544d> p0Var2, p0<Handler> p0Var3, p0<Executor> p0Var4, p0<C13564n> p0Var5, p0<C> p0Var6, p0<z0> p0Var7, p0<O0> p0Var8, p0<u0> p0Var9) {
        this.f91213a = p0Var;
        this.f91214b = p0Var2;
        this.f91215c = p0Var3;
        this.f91216d = p0Var4;
        this.f91217e = p0Var5;
        this.f91218f = p0Var6;
        this.f91219g = p0Var7;
        this.f91220h = p0Var8;
        this.f91221i = p0Var9;
    }

    @Override
    public final K0 O1() {
        Application O12 = this.f91213a.O1();
        C13544d O13 = this.f91214b.O1();
        Handler handler = C13553h0.f91303a;
        C13567o0.a(handler);
        Executor executor = C13553h0.f91304b;
        C13567o0.a(executor);
        return new K0(O12, O13, handler, executor, this.f91217e.O1(), this.f91218f.O1(), ((E0) this.f91219g).O1(), ((C13542c) this.f91220h).O1(), this.f91221i.O1());
    }
}
