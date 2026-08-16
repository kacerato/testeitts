package sd;

import java.util.concurrent.Executor;
import qd.InterfaceC15056A;
import qd.M;
import qd.z;

public class C15279h<T> implements InterfaceC15272a {

    public final M<T> f109447a;

    public final InterfaceC15056A f109448b;

    public boolean f109449c = true;

    public C15279h(M<T> m10, InterfaceC15056A interfaceC15056A) {
        this.f109447a = m10;
        this.f109448b = interfaceC15056A;
    }

    @Override
    public void a() {
        this.f109449c = false;
    }

    @Override
    public void b(Executor executor) {
        this.f109447a.d(executor);
    }

    @Override
    public z[] c() {
        return this.f109447a.b();
    }

    @Override
    public boolean d() {
        return this.f109449c;
    }

    @Override
    public InterfaceC15056A e() {
        return this.f109448b;
    }

    @Override
    public void g() {
        this.f109447a.c();
    }
}
