package jl;

public class o extends m {

    public final byte[] f94006d;

    public final byte[] f94007e;

    public final byte[] f94008f;

    public final byte[] f94009g;

    public final byte[] f94010h;

    public o(n nVar, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        super(true, nVar);
        this.f94006d = org.bouncycastle.util.a.p(bArr);
        this.f94007e = org.bouncycastle.util.a.p(bArr2);
        this.f94008f = org.bouncycastle.util.a.p(bArr3);
        this.f94009g = org.bouncycastle.util.a.p(bArr4);
        this.f94010h = org.bouncycastle.util.a.p(bArr5);
    }

    public byte[] e() {
        return org.bouncycastle.util.a.p(this.f94006d);
    }

    public byte[] f() {
        return org.bouncycastle.util.a.p(this.f94007e);
    }

    public byte[] g() {
        return org.bouncycastle.util.a.p(this.f94010h);
    }

    public byte[] getEncoded() {
        byte[] bArr = new byte[d().c()];
        byte[] bArr2 = this.f94006d;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        byte[] bArr3 = this.f94007e;
        System.arraycopy(bArr3, 0, bArr, this.f94006d.length, bArr3.length);
        byte[] bArr4 = this.f94008f;
        System.arraycopy(bArr4, 0, bArr, this.f94006d.length + this.f94007e.length, bArr4.length);
        byte[] bArr5 = this.f94009g;
        System.arraycopy(bArr5, 0, bArr, this.f94006d.length + this.f94007e.length + this.f94008f.length, bArr5.length);
        byte[] bArr6 = this.f94010h;
        System.arraycopy(bArr6, 0, bArr, this.f94006d.length + this.f94007e.length + this.f94008f.length + this.f94009g.length, bArr6.length);
        return bArr;
    }

    public byte[] h() {
        return org.bouncycastle.util.a.p(this.f94008f);
    }

    public byte[] i() {
        return org.bouncycastle.util.a.p(this.f94009g);
    }
}
