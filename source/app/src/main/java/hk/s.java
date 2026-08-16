package hk;

import java.security.spec.AlgorithmParameterSpec;

public class s implements AlgorithmParameterSpec {

    public byte[] f91095b;

    public byte[] f91096c;

    public int f91097d;

    public int f91098e;

    public byte[] f91099f;

    public boolean f91100g;

    public s(byte[] bArr, byte[] bArr2, int i10) {
        this(bArr, bArr2, i10, -1, null, false);
    }

    public int a() {
        return this.f91098e;
    }

    public byte[] b() {
        return org.bouncycastle.util.a.p(this.f91095b);
    }

    public byte[] c() {
        return org.bouncycastle.util.a.p(this.f91096c);
    }

    public int d() {
        return this.f91097d;
    }

    public byte[] e() {
        return org.bouncycastle.util.a.p(this.f91099f);
    }

    public boolean f() {
        return this.f91100g;
    }

    public void g(boolean z10) {
        this.f91100g = z10;
    }

    public s(byte[] bArr, byte[] bArr2, int i10, int i11, byte[] bArr3) {
        this(bArr, bArr2, i10, i11, bArr3, false);
    }

    public s(byte[] bArr, byte[] bArr2, int i10, int i11, byte[] bArr3, boolean z10) {
        if (bArr != null) {
            byte[] bArr4 = new byte[bArr.length];
            this.f91095b = bArr4;
            System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        } else {
            this.f91095b = null;
        }
        if (bArr2 != null) {
            byte[] bArr5 = new byte[bArr2.length];
            this.f91096c = bArr5;
            System.arraycopy(bArr2, 0, bArr5, 0, bArr2.length);
        } else {
            this.f91096c = null;
        }
        this.f91097d = i10;
        this.f91098e = i11;
        this.f91099f = org.bouncycastle.util.a.p(bArr3);
        this.f91100g = z10;
    }
}
