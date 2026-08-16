package sd;

import java.util.concurrent.Executor;
import qd.InterfaceC15056A;
import qd.InterfaceC15066i;
import qd.InterfaceRunnableC15067j;
import qd.z;

public class C15276e<T> implements InterfaceC15272a {

    public final InterfaceRunnableC15067j f109441a;

    public final InterfaceC15066i<T> f109442b;

    public final InterfaceC15056A f109443c;

    public boolean f109444d = true;

    public C15276e(InterfaceRunnableC15067j interfaceRunnableC15067j, InterfaceC15066i<T> interfaceC15066i, InterfaceC15056A interfaceC15056A) {
        this.f109441a = interfaceRunnableC15067j;
        this.f109442b = interfaceC15066i;
        this.f109443c = interfaceC15056A;
    }

    @Override
    public void a() {
        this.f109444d = false;
    }

    @Override
    public void b(Executor executor) {
        executor.execute(this.f109441a);
    }

    @Override
    public z[] c() {
        return new z[]{this.f109441a.R()};
    }

    @Override
    public boolean d() {
        return this.f109444d;
    }

    @Override
    public InterfaceC15056A e() {
        return this.f109443c;
    }

    public InterfaceRunnableC15067j f() {
        return this.f109441a;
    }

    @Override
    public void g() {
        this.f109441a.g();
    }

    public InterfaceC15066i<T> h() {
        return this.f109442b;
    }
}
