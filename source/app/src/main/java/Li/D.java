package Li;

import Bi.InterfaceC2379k;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class D implements Bi.Z {

    public C f13561a = new C();

    public Si.j f13562b = new Si.j();

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (interfaceC2379k instanceof Xi.x0) {
            interfaceC2379k = ((Xi.x0) interfaceC2379k).a();
        }
        Xi.A0 a02 = (Xi.A0) interfaceC2379k;
        this.f13561a.a(z10, a02.a());
        this.f13562b.a(new Xi.w0(a02.a(), a02.b()));
    }

    @Override
    public String b() {
        return "GOST28147Wrap";
    }

    @Override
    public byte[] c(byte[] bArr, int i10, int i11) {
        this.f13562b.update(bArr, i10, i11);
        byte[] bArr2 = new byte[this.f13562b.d() + i11];
        this.f13561a.g(bArr, i10, bArr2, 0);
        this.f13561a.g(bArr, i10 + 8, bArr2, 8);
        this.f13561a.g(bArr, i10 + 16, bArr2, 16);
        this.f13561a.g(bArr, i10 + 24, bArr2, 24);
        this.f13562b.c(bArr2, i11);
        return bArr2;
    }

    @Override
    public byte[] d(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        int d10 = i11 - this.f13562b.d();
        byte[] bArr2 = new byte[d10];
        this.f13561a.g(bArr, i10, bArr2, 0);
        this.f13561a.g(bArr, i10 + 8, bArr2, 8);
        this.f13561a.g(bArr, i10 + 16, bArr2, 16);
        this.f13561a.g(bArr, i10 + 24, bArr2, 24);
        byte[] bArr3 = new byte[this.f13562b.d()];
        this.f13562b.update(bArr2, 0, d10);
        this.f13562b.c(bArr3, 0);
        byte[] bArr4 = new byte[this.f13562b.d()];
        System.arraycopy(bArr, (i10 + i11) - 4, bArr4, 0, this.f13562b.d());
        if (org.bouncycastle.util.a.I(bArr3, bArr4)) {
            return bArr2;
        }
        throw new IllegalStateException("mac mismatch");
    }
}
