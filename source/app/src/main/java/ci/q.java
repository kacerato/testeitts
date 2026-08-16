package Ci;

import Bi.InterfaceC2379k;
import Bi.N;
import Xi.S0;
import Xi.T0;

public class q implements N {

    public final N f4454a;

    public S0 f4455b;

    public q(N n10) {
        this.f4454a = n10;
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        S0 s02 = (S0) interfaceC2379k;
        this.f4455b = s02;
        this.f4454a.a(s02.c());
    }

    @Override
    public void b(InterfaceC2379k interfaceC2379k, byte[] bArr, int i10) {
        T0 t02 = (T0) interfaceC2379k;
        this.f4454a.a(this.f4455b.a());
        this.f4454a.b(t02.a(), bArr, i10);
        this.f4454a.a(this.f4455b.c());
        this.f4454a.b(t02.b(), bArr, i10 + this.f4454a.c());
    }

    @Override
    public int c() {
        return this.f4454a.c() * 2;
    }
}
