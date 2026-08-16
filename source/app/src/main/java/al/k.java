package al;

public class k extends i {

    public final byte[] f32388d;

    public k(j jVar, byte[] bArr) {
        super(true, jVar);
        this.f32388d = org.bouncycastle.util.a.p(bArr);
    }

    public byte[] e() {
        return org.bouncycastle.util.a.X(this.f32388d, (d().h() * 2) + 40, this.f32388d.length - 32);
    }

    public byte[] f() {
        return org.bouncycastle.util.a.X(this.f32388d, 32, 40);
    }

    public byte[] g() {
        return org.bouncycastle.util.a.X(this.f32388d, 0, 32);
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.p(this.f32388d);
    }

    public byte[] h() {
        return org.bouncycastle.util.a.X(this.f32388d, 40, (d().h() * 2) + 40);
    }

    public byte[] i() {
        return org.bouncycastle.util.a.p(this.f32388d);
    }

    public byte[] j() {
        byte[] bArr = this.f32388d;
        return org.bouncycastle.util.a.X(bArr, bArr.length - 32, bArr.length);
    }

    public byte[] k() {
        C3674d a10 = d().a();
        byte[] bArr = new byte[a10.s()];
        a10.m(this.f32388d);
        return bArr;
    }

    public k(j jVar, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        super(true, jVar);
        byte[] bArr6 = new byte[bArr.length + bArr2.length + bArr3.length + bArr4.length + bArr5.length];
        this.f32388d = bArr6;
        System.arraycopy(bArr, 0, bArr6, 0, bArr.length);
        int length = bArr.length;
        System.arraycopy(bArr2, 0, bArr6, length, bArr2.length);
        int length2 = length + bArr2.length;
        System.arraycopy(bArr3, 0, bArr6, length2, bArr3.length);
        int length3 = length2 + bArr3.length;
        System.arraycopy(bArr4, 0, bArr6, length3, bArr4.length);
        System.arraycopy(bArr5, 0, bArr6, length3 + bArr4.length, bArr5.length);
    }
}
