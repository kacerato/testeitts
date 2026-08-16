package Wl;

import w2.C15883c;

public class j extends C {

    public h f27818b;

    public int[] f27819c;

    public j(h hVar, byte[] bArr) {
        this.f27818b = new h(hVar);
        int i10 = 8;
        int i11 = 1;
        while (hVar.d() > i10) {
            i11++;
            i10 += 8;
        }
        if (bArr.length % i11 != 0) {
            throw new IllegalArgumentException("Byte array is not an encoded vector over the given finite field.");
        }
        int length = bArr.length / i11;
        this.f27801a = length;
        this.f27819c = new int[length];
        int i12 = 0;
        for (int i13 = 0; i13 < this.f27819c.length; i13++) {
            int i14 = 0;
            while (i14 < i10) {
                int[] iArr = this.f27819c;
                iArr[i13] = ((bArr[i12] & 255) << i14) | iArr[i13];
                i14 += 8;
                i12++;
            }
            if (!hVar.k(this.f27819c[i13])) {
                throw new IllegalArgumentException("Byte array is not an encoded vector over the given finite field.");
            }
        }
    }

    @Override
    public C a(C c10) {
        throw new RuntimeException("not implemented");
    }

    @Override
    public byte[] b() {
        int i10 = 8;
        int i11 = 1;
        while (this.f27818b.d() > i10) {
            i11++;
            i10 += 8;
        }
        byte[] bArr = new byte[this.f27819c.length * i11];
        int i12 = 0;
        for (int i13 = 0; i13 < this.f27819c.length; i13++) {
            int i14 = 0;
            while (i14 < i10) {
                bArr[i12] = (byte) (this.f27819c[i13] >>> i14);
                i14 += 8;
                i12++;
            }
        }
        return bArr;
    }

    @Override
    public boolean d() {
        for (int length = this.f27819c.length - 1; length >= 0; length--) {
            if (this.f27819c[length] != 0) {
                return false;
            }
        }
        return true;
    }

    @Override
    public C e(x xVar) {
        int[] c10 = xVar.c();
        int i10 = this.f27801a;
        if (i10 != c10.length) {
            throw new ArithmeticException("permutation size and vector size mismatch");
        }
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < c10.length; i11++) {
            iArr[i11] = this.f27819c[c10[i11]];
        }
        return new j(this.f27818b, iArr);
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (this.f27818b.equals(jVar.f27818b)) {
            return t.b(this.f27819c, jVar.f27819c);
        }
        return false;
    }

    public h f() {
        return this.f27818b;
    }

    public int[] g() {
        return t.a(this.f27819c);
    }

    @Override
    public int hashCode() {
        return (this.f27818b.hashCode() * 31) + org.bouncycastle.util.a.w0(this.f27819c);
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < this.f27819c.length; i10++) {
            for (int i11 = 0; i11 < this.f27818b.d(); i11++) {
                stringBuffer.append(((1 << (i11 & 31)) & this.f27819c[i10]) != 0 ? '1' : '0');
            }
            stringBuffer.append(C15883c.f126249O);
        }
        return stringBuffer.toString();
    }

    public j(h hVar, int[] iArr) {
        this.f27818b = hVar;
        this.f27801a = iArr.length;
        for (int length = iArr.length - 1; length >= 0; length--) {
            if (!hVar.k(iArr[length])) {
                throw new ArithmeticException("Element array is not specified over the given finite field.");
            }
        }
        this.f27819c = t.a(iArr);
    }

    public j(j jVar) {
        this.f27818b = new h(jVar.f27818b);
        this.f27801a = jVar.f27801a;
        this.f27819c = t.a(jVar.f27819c);
    }
}
