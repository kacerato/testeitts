package i1;

import android.app.Application;
import java.util.concurrent.Executor;

public final class C13562m implements InterfaceC13561l0<C13560l> {

    public final p0<Application> f91335a;

    public final p0<C13564n> f91336b;

    public final p0<Executor> f91337c;

    public C13562m(p0<Application> p0Var, p0<C13564n> p0Var2, p0<Executor> p0Var3) {
        this.f91335a = p0Var;
        this.f91336b = p0Var2;
        this.f91337c = p0Var3;
    }

    @Override
    public final C13560l O1() {
        Application O12 = this.f91335a.O1();
        C13564n O13 = this.f91336b.O1();
        Executor executor = C13553h0.f91304b;
        C13567o0.a(executor);
        return new C13560l(O12, O13, executor);
    }
}
