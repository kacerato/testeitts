package Li;

import java.math.BigInteger;

public class r {

    public BigInteger f14050a;

    public BigInteger f14051b;

    public BigInteger f14052c;

    public BigInteger f14053d;

    public r() {
    }

    public BigInteger a() {
        return this.f14052c;
    }

    public BigInteger b() {
        return this.f14050a;
    }

    public BigInteger c() {
        return this.f14051b;
    }

    public BigInteger d() {
        return this.f14053d;
    }

    public void e(BigInteger bigInteger) {
        this.f14052c = bigInteger;
    }

    public void f(BigInteger bigInteger) {
        this.f14050a = bigInteger;
    }

    public void g(BigInteger bigInteger) {
        this.f14051b = bigInteger;
    }

    public void h(BigInteger bigInteger) {
        this.f14053d = bigInteger;
    }

    public byte[] i() {
        byte[] byteArray = this.f14050a.toByteArray();
        int length = byteArray.length;
        byte[] byteArray2 = this.f14051b.toByteArray();
        int length2 = byteArray2.length;
        byte[] byteArray3 = this.f14052c.toByteArray();
        int length3 = byteArray3.length;
        byte[] byteArray4 = this.f14053d.toByteArray();
        int length4 = byteArray4.length;
        byte[] bArr = new byte[length + length2 + length3 + length4 + 16];
        org.bouncycastle.util.p.h(length, bArr, 0);
        System.arraycopy(byteArray, 0, bArr, 4, length);
        org.bouncycastle.util.p.h(length2, bArr, 4 + length);
        int i10 = length + 8;
        System.arraycopy(byteArray2, 0, bArr, i10, length2);
        int i11 = i10 + length2;
        org.bouncycastle.util.p.h(length3, bArr, i11);
        int i12 = i11 + 4;
        System.arraycopy(byteArray3, 0, bArr, i12, length3);
        int i13 = i12 + length3;
        org.bouncycastle.util.p.h(length4, bArr, i13);
        System.arraycopy(byteArray4, 0, bArr, i13 + 4, length4);
        return bArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("u1: " + this.f14050a.toString());
        stringBuffer.append("\nu2: " + this.f14051b.toString());
        stringBuffer.append("\ne: " + this.f14052c.toString());
        stringBuffer.append("\nv: " + this.f14053d.toString());
        return stringBuffer.toString();
    }

    public r(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f14050a = bigInteger;
        this.f14051b = bigInteger2;
        this.f14052c = bigInteger3;
        this.f14053d = bigInteger4;
    }

    public r(byte[] bArr) {
        int a10 = org.bouncycastle.util.p.a(bArr, 0);
        int i10 = 4 + a10;
        this.f14050a = new BigInteger(org.bouncycastle.util.a.X(bArr, 4, i10));
        int i11 = a10 + 8;
        int a11 = org.bouncycastle.util.p.a(bArr, i10) + i11;
        this.f14051b = new BigInteger(org.bouncycastle.util.a.X(bArr, i11, a11));
        int a12 = org.bouncycastle.util.p.a(bArr, a11);
        int i12 = a11 + 4;
        int i13 = a12 + i12;
        this.f14052c = new BigInteger(org.bouncycastle.util.a.X(bArr, i12, i13));
        int a13 = org.bouncycastle.util.p.a(bArr, i13);
        int i14 = i13 + 4;
        this.f14053d = new BigInteger(org.bouncycastle.util.a.X(bArr, i14, a13 + i14));
    }
}
