package Sl;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import java.nio.ByteBuffer;

public class j {

    public n f23720a;

    public InterfaceC2392y f23721b;

    public o f23722c;

    public p f23723d;

    public j(n nVar) {
        this.f23720a = nVar;
    }

    public Yl.e a(byte[] bArr, int i10) {
        n nVar = this.f23720a;
        int i11 = nVar.f23762b;
        int numberOfLeadingZeros = Integer.numberOfLeadingZeros(nVar.f23763c);
        int i12 = 31 - numberOfLeadingZeros;
        int i13 = (38 - numberOfLeadingZeros) / 8;
        Yl.e eVar = new Yl.e(i11);
        ByteBuffer allocate = ByteBuffer.allocate(bArr.length + 4);
        allocate.put(bArr);
        allocate.putInt(i10);
        k kVar = new k(allocate.array(), this.f23720a.f23775o);
        for (int i14 = 0; i14 < i11; i14++) {
            byte[] a10 = kVar.a(i13);
            int i15 = (i13 * 8) - i12;
            a10[a10.length - 1] = (byte) ((a10[a10.length - 1] >> i15) << i15);
            ByteBuffer allocate2 = ByteBuffer.allocate(4);
            allocate2.put(a10);
            eVar.f30630a[i14] = Integer.reverseBytes(allocate2.getInt());
        }
        return eVar;
    }

    public byte[] b() {
        InterfaceC2392y interfaceC2392y = this.f23721b;
        if (interfaceC2392y == null || this.f23722c == null) {
            throw new IllegalStateException("Call initSign first!");
        }
        byte[] bArr = new byte[interfaceC2392y.f()];
        this.f23721b.c(bArr, 0);
        return e(bArr, this.f23722c);
    }

    public void c(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (z10) {
            this.f23722c = (o) interfaceC2379k;
        } else {
            this.f23723d = (p) interfaceC2379k;
        }
        InterfaceC2392y interfaceC2392y = this.f23720a.f23775o;
        this.f23721b = interfaceC2392y;
        interfaceC2392y.reset();
    }

    public final Yl.e d(Yl.e eVar, o oVar) {
        n nVar = this.f23720a;
        int i10 = nVar.f23762b;
        int i11 = nVar.f23763c;
        int i12 = nVar.f23768h;
        p f10 = oVar.f();
        Yl.e eVar2 = new Yl.e(i10);
        while (i12 >= 1) {
            Yl.i iVar = oVar.e(i12).f23778a;
            Yl.i iVar2 = oVar.e(i12).f23779b;
            Yl.e a10 = iVar.a(eVar);
            a10.n(i11);
            Yl.e a11 = iVar2.a(a10);
            Yl.e a12 = iVar2.a(eVar);
            a12.n(i11);
            a11.R(iVar.a(a12));
            eVar2.h(a11);
            Yl.e eVar3 = (Yl.e) oVar.e(i12).f23780c.clone();
            eVar3.R(i12 > 1 ? oVar.e(i12 - 1).f23780c : f10.f23783d);
            eVar = a11.e(eVar3, i11);
            i12--;
        }
        Yl.i iVar3 = oVar.e(0).f23778a;
        Yl.i iVar4 = oVar.e(0).f23779b;
        Yl.e a13 = iVar3.a(eVar);
        a13.n(i11);
        Yl.e a14 = iVar4.a(a13);
        Yl.e a15 = iVar4.a(eVar);
        a15.n(i11);
        a14.R(iVar3.a(a15));
        eVar2.h(a14);
        eVar2.D(i11);
        return eVar2;
    }

    public final byte[] e(byte[] bArr, o oVar) {
        Yl.e a10;
        Yl.e d10;
        p f10 = oVar.f();
        int i10 = 0;
        do {
            i10++;
            if (i10 > this.f23720a.f23773m) {
                throw new IllegalStateException("Signing failed: too many retries (max=" + this.f23720a.f23773m + ")");
            }
            a10 = a(bArr, i10);
            d10 = d(a10, oVar);
        } while (!h(a10, d10, f10.f23783d));
        byte[] U10 = d10.U(this.f23720a.f23763c);
        ByteBuffer allocate = ByteBuffer.allocate(U10.length + 4);
        allocate.put(U10);
        allocate.putInt(i10);
        return allocate.array();
    }

    public void f(byte b10) {
        InterfaceC2392y interfaceC2392y = this.f23721b;
        if (interfaceC2392y == null) {
            throw new IllegalStateException("Call initSign or initVerify first!");
        }
        interfaceC2392y.update(b10);
    }

    public void g(byte[] bArr, int i10, int i11) {
        InterfaceC2392y interfaceC2392y = this.f23721b;
        if (interfaceC2392y == null) {
            throw new IllegalStateException("Call initSign or initVerify first!");
        }
        interfaceC2392y.update(bArr, i10, i11);
    }

    public final boolean h(Yl.e eVar, Yl.e eVar2, Yl.e eVar3) {
        n nVar = this.f23720a;
        int i10 = nVar.f23763c;
        double d10 = nVar.f23772l;
        double d11 = nVar.f23770j;
        Yl.e e10 = eVar3.e(eVar2, i10);
        e10.R(eVar);
        return ((double) ((long) (((double) eVar2.k(i10)) + (d11 * ((double) e10.k(i10)))))) <= d10;
    }

    public final boolean i(byte[] bArr, byte[] bArr2, p pVar) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr2);
        byte[] bArr3 = new byte[bArr2.length - 4];
        wrap.get(bArr3);
        n nVar = this.f23720a;
        return h(a(bArr, wrap.getInt()), Yl.e.t(bArr3, nVar.f23762b, nVar.f23763c), pVar.f23783d);
    }

    public boolean j(byte[] bArr) {
        InterfaceC2392y interfaceC2392y = this.f23721b;
        if (interfaceC2392y == null || this.f23723d == null) {
            throw new IllegalStateException("Call initVerify first!");
        }
        byte[] bArr2 = new byte[interfaceC2392y.f()];
        this.f23721b.c(bArr2, 0);
        return i(bArr2, bArr, this.f23723d);
    }
}
