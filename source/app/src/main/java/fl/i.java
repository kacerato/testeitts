package fl;

import Bi.InterfaceC2379k;
import Bi.r;
import Xi.x0;
import java.security.SecureRandom;

public class i implements Yk.g {

    public g f86531a;

    public h f86532b;

    public SecureRandom f86533c;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        SecureRandom h10;
        if (!z10) {
            this.f86532b = (h) interfaceC2379k;
            return;
        }
        if (interfaceC2379k instanceof x0) {
            x0 x0Var = (x0) interfaceC2379k;
            this.f86531a = (g) x0Var.a();
            h10 = x0Var.b();
        } else {
            this.f86531a = (g) interfaceC2379k;
            h10 = r.h();
        }
        this.f86533c = h10;
    }

    @Override
    public byte[] b(byte[] bArr) {
        C13251a b10 = this.f86531a.d().b();
        int i10 = b10.f86438i;
        int i11 = ((i10 + ((b10.f86430e - 1) * (i10 - b10.f86440j))) + 7) >>> 3;
        byte[] bArr2 = new byte[bArr.length + i11];
        System.arraycopy(bArr, 0, bArr2, i11, bArr.length);
        b10.x0(this.f86533c, bArr2, bArr, 0, bArr.length, this.f86531a.f86529d);
        return bArr2;
    }

    @Override
    public boolean d(byte[] bArr, byte[] bArr2) {
        return this.f86532b.d().b().y(this.f86532b.e(), bArr, bArr2) != 0;
    }
}
