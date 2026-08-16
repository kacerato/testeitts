package Ei;

import Bi.InterfaceC2391x;
import Bi.InterfaceC2392y;
import Bi.InterfaceC2393z;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.util.p;

public class f implements InterfaceC2393z {

    public final InterfaceC2392y f5840a;

    public byte[] f5841b;

    public int f5842c;

    public byte[] f5843d;

    public byte[] f5844e;

    public f(InterfaceC2392y interfaceC2392y) {
        this.f5840a = interfaceC2392y;
        this.f5844e = new byte[interfaceC2392y.f()];
    }

    @Override
    public int a(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalArgumentException {
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("output buffer too small");
        }
        InterfaceC2392y interfaceC2392y = this.f5840a;
        byte[] bArr2 = this.f5841b;
        interfaceC2392y.update(bArr2, 0, bArr2.length);
        int i12 = this.f5842c;
        this.f5842c = i12 + 1;
        byte[] k10 = p.k(i12);
        this.f5840a.update(k10, 0, k10.length);
        byte[] bArr3 = this.f5843d;
        if (bArr3 != null) {
            this.f5840a.update(bArr3, 0, bArr3.length);
        }
        this.f5840a.c(this.f5844e, 0);
        System.arraycopy(this.f5844e, 0, bArr, i10, i11);
        org.bouncycastle.util.a.n(this.f5844e);
        return i11;
    }

    @Override
    public InterfaceC2392y b() {
        return this.f5840a;
    }

    @Override
    public void c(InterfaceC2391x interfaceC2391x) {
        if (!(interfaceC2391x instanceof e)) {
            throw new IllegalArgumentException("unkown parameters type");
        }
        e eVar = (e) interfaceC2391x;
        this.f5841b = eVar.c();
        this.f5842c = eVar.b();
        this.f5843d = eVar.a();
    }
}
