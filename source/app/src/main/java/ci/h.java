package Ci;

import Bi.InterfaceC2379k;
import Bi.r;
import Xi.E;
import Xi.F;
import java.math.BigInteger;

public class h {

    public E f4433a;

    public byte[] a(InterfaceC2379k interfaceC2379k) {
        F f10 = (F) interfaceC2379k;
        f fVar = new f();
        f fVar2 = new f();
        fVar.a(this.f4433a.c());
        BigInteger b10 = fVar.b(f10.b());
        fVar2.a(this.f4433a.a());
        BigInteger b11 = fVar2.b(f10.a());
        int b12 = b();
        byte[] bArr = new byte[b12 * 2];
        org.bouncycastle.util.b.a(b11, bArr, 0, b12);
        org.bouncycastle.util.b.a(b10, bArr, b12, b12);
        return bArr;
    }

    public int b() {
        return (this.f4433a.c().d().a().w() + 7) / 8;
    }

    public void c(InterfaceC2379k interfaceC2379k) {
        E e10 = (E) interfaceC2379k;
        this.f4433a = e10;
        r.a(m.b("ECCDHU", e10.c()));
    }
}
