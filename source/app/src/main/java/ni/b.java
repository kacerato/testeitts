package Ni;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Li.C2769a;
import Xi.Z;
import org.bouncycastle.util.q;

public class b extends a {
    public b() {
        this(C2769a.r());
    }

    @Override
    public int a(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        System.arraycopy(this.f16382c.b() > 256 ? a.f(d.p(this.f16380a, this.f16382c.c(), this.f16382c.d(), a.g(bArr), i10, i11 / 2)) : d.o(this.f16380a, this.f16382c.c(), this.f16382c.d(), bArr, i10, i11), 0, bArr2, i12, i11);
        return i11;
    }

    @Override
    public int b(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        System.arraycopy(this.f16382c.b() > 256 ? a.f(d.w(this.f16380a, this.f16382c.c(), this.f16382c.d(), a.g(bArr), i10, i11 / 2)) : d.v(this.f16380a, this.f16382c.c(), this.f16382c.d(), bArr, i10, i11), 0, bArr2, i12, i11);
        return i11;
    }

    @Override
    public String c() {
        return "FF1";
    }

    @Override
    public void d(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f16381b = z10;
        this.f16382c = (Z) interfaceC2379k;
        this.f16380a.a(!r3.e(), this.f16382c.a());
    }

    public b(InterfaceC2374f interfaceC2374f) {
        super(interfaceC2374f);
        if (interfaceC2374f.c() != 16) {
            throw new IllegalArgumentException("base cipher needs to be 128 bits");
        }
        if (q.f(d.f16383a) || q.f(d.f16384b)) {
            throw new UnsupportedOperationException("FF1 encryption disabled");
        }
    }
}
