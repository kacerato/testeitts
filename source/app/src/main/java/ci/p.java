package Ci;

import Bi.InterfaceC2373e;
import Bi.InterfaceC2379k;
import Bi.N;
import Xi.C3335c;
import Xi.N0;
import Xi.Q0;
import java.math.BigInteger;

public class p implements InterfaceC2373e {

    public C3335c f4451a;

    public N f4452b;

    public int f4453c = 0;

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        N oVar;
        if (interfaceC2379k instanceof N0) {
            this.f4453c = 32;
            oVar = new n();
        } else {
            if (!(interfaceC2379k instanceof Q0)) {
                throw new IllegalArgumentException("key is neither X25519 nor X448");
            }
            this.f4453c = 56;
            oVar = new o();
        }
        this.f4452b = oVar;
        this.f4451a = (C3335c) interfaceC2379k;
        this.f4452b.a(interfaceC2379k);
    }

    @Override
    public BigInteger b(InterfaceC2379k interfaceC2379k) {
        byte[] bArr = new byte[this.f4453c];
        this.f4452b.b(interfaceC2379k, bArr, 0);
        return new BigInteger(1, bArr);
    }

    @Override
    public int c() {
        return this.f4453c;
    }
}
