package Ci;

import Bi.InterfaceC2379k;
import Bi.r;
import Xi.C3368t;
import Xi.C3370u;
import java.math.BigInteger;

public class d {

    public C3368t f4429a;

    public byte[] a(InterfaceC2379k interfaceC2379k) {
        C3370u c3370u = (C3370u) interfaceC2379k;
        b bVar = new b();
        b bVar2 = new b();
        bVar.a(this.f4429a.c());
        BigInteger b10 = bVar.b(c3370u.b());
        bVar2.a(this.f4429a.a());
        BigInteger b11 = bVar2.b(c3370u.a());
        int b12 = b();
        byte[] bArr = new byte[b12 * 2];
        org.bouncycastle.util.b.a(b11, bArr, 0, b12);
        org.bouncycastle.util.b.a(b10, bArr, b12, b12);
        return bArr;
    }

    public int b() {
        return (this.f4429a.c().d().f().bitLength() + 7) / 8;
    }

    public void c(InterfaceC2379k interfaceC2379k) {
        C3368t c3368t = (C3368t) interfaceC2379k;
        this.f4429a = c3368t;
        r.a(m.a("DHU", c3368t.c()));
    }
}
