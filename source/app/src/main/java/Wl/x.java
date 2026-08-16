package Wl;

import java.security.SecureRandom;

public class x {

    public int[] f27868a;

    public x(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("invalid length");
        }
        this.f27868a = new int[i10];
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            this.f27868a[i11] = i11;
        }
    }

    public x a() {
        x xVar = new x(this.f27868a.length);
        for (int length = this.f27868a.length - 1; length >= 0; length--) {
            xVar.f27868a[this.f27868a[length]] = length;
        }
        return xVar;
    }

    public byte[] b() {
        int length = this.f27868a.length;
        int e10 = u.e(length - 1);
        byte[] bArr = new byte[(length * e10) + 4];
        v.a(length, bArr, 0);
        for (int i10 = 0; i10 < length; i10++) {
            v.b(this.f27868a[i10], bArr, (i10 * e10) + 4, e10);
        }
        return bArr;
    }

    public int[] c() {
        return t.a(this.f27868a);
    }

    public final boolean d(int[] iArr) {
        int length = iArr.length;
        boolean[] zArr = new boolean[length];
        for (int i10 : iArr) {
            if (i10 < 0 || i10 >= length || zArr[i10]) {
                return false;
            }
            zArr[i10] = true;
        }
        return true;
    }

    public x e(x xVar) {
        int length = xVar.f27868a.length;
        int[] iArr = this.f27868a;
        if (length != iArr.length) {
            throw new IllegalArgumentException("length mismatch");
        }
        x xVar2 = new x(iArr.length);
        for (int length2 = this.f27868a.length - 1; length2 >= 0; length2--) {
            xVar2.f27868a[length2] = this.f27868a[xVar.f27868a[length2]];
        }
        return xVar2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof x) {
            return t.b(this.f27868a, ((x) obj).f27868a);
        }
        return false;
    }

    public int hashCode() {
        return org.bouncycastle.util.a.w0(this.f27868a);
    }

    public String toString() {
        String str = "[" + this.f27868a[0];
        for (int i10 = 1; i10 < this.f27868a.length; i10++) {
            str = str + ", " + this.f27868a[i10];
        }
        return str + "]";
    }

    public x(int i10, SecureRandom secureRandom) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("invalid length");
        }
        this.f27868a = new int[i10];
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            iArr[i11] = i11;
        }
        int i12 = i10;
        for (int i13 = 0; i13 < i10; i13++) {
            int a10 = B.a(secureRandom, i12);
            i12--;
            this.f27868a[i13] = iArr[a10];
            iArr[a10] = iArr[i12];
        }
    }

    public x(byte[] bArr) {
        if (bArr.length <= 4) {
            throw new IllegalArgumentException("invalid encoding");
        }
        int g10 = v.g(bArr, 0);
        int e10 = u.e(g10 - 1);
        if (bArr.length != (g10 * e10) + 4) {
            throw new IllegalArgumentException("invalid encoding");
        }
        this.f27868a = new int[g10];
        for (int i10 = 0; i10 < g10; i10++) {
            this.f27868a[i10] = v.h(bArr, (i10 * e10) + 4, e10);
        }
        if (!d(this.f27868a)) {
            throw new IllegalArgumentException("invalid encoding");
        }
    }

    public x(int[] iArr) {
        if (!d(iArr)) {
            throw new IllegalArgumentException("array is not a permutation vector");
        }
        this.f27868a = t.a(iArr);
    }
}
