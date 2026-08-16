package il;

import Bi.A;
import Ii.N;

public class C13754a implements A {

    public final g f92396a;

    public final h f92397b;

    public C13754a(h hVar) {
        this.f92396a = hVar.d();
        this.f92397b = hVar;
    }

    @Override
    public int a() {
        return this.f92396a.f92412c.d();
    }

    @Override
    public byte[] b(byte[] bArr) {
        bm.i iVar = this.f92396a.f92412c;
        byte[] bArr2 = this.f92397b.f92413d;
        int m10 = iVar.m() + iVar.d();
        byte[] bArr3 = new byte[m10];
        k d10 = new f(iVar).d(bArr, this.f92397b.f92413d);
        byte[] bArr4 = d10.f92416a;
        int i10 = d10.f92417b;
        N n10 = new N(256);
        byte[] bArr5 = new byte[n10.f()];
        n10.update(bArr4, 0, bArr4.length);
        n10.c(bArr5, 0);
        for (int i11 = 0; i11 < iVar.m(); i11++) {
            bArr3[i11] = bArr2[iVar.j() + i11];
        }
        for (int i12 = 0; i12 < iVar.d(); i12++) {
            bArr3[iVar.m() + i12] = bArr[i12];
        }
        n10.reset();
        n10.update(bArr3, 0, m10);
        n10.c(bArr4, 0);
        c(bArr5, bArr4, (byte) i10);
        byte[] X10 = org.bouncycastle.util.a.X(bArr5, 0, iVar.t());
        org.bouncycastle.util.a.n(bArr5);
        return X10;
    }

    public final void c(byte[] bArr, byte[] bArr2, byte b10) {
        byte b11 = (byte) ((~b10) + 1);
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b12 = bArr[i10];
            bArr[i10] = (byte) (b12 ^ ((bArr2[i10] ^ b12) & b11));
        }
    }
}
