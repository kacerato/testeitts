package kl;

import java.lang.reflect.Array;
import java.util.logging.Logger;

public class s {

    public static final Logger f95493i = Logger.getLogger(s.class.getName());

    public static final int f95494j = 32;

    public int f95495a;

    public byte[][] f95496b;

    public int f95497c;

    public boolean[] f95498d;

    public boolean[] f95499e;

    public int f95500f;

    public int f95501g;

    public h f95502h;

    public s(h hVar, int i10, int i11) {
        int i12;
        this.f95502h = hVar;
        int a10 = t.a(i10);
        int i13 = a10 + 1;
        this.f95495a = i13;
        int i14 = ((1 << i13) - 1) - ((1 << a10) - i10);
        this.f95500f = i14;
        this.f95501g = i10;
        this.f95497c = i11;
        this.f95496b = (byte[][]) Array.newInstance(Byte.TYPE, i14, i11);
        int i15 = 0;
        while (true) {
            i12 = this.f95500f;
            if (i15 >= i12) {
                break;
            }
            this.f95496b[i15] = new byte[i11];
            i15++;
        }
        this.f95498d = new boolean[i12];
        boolean[] zArr = new boolean[i12];
        this.f95499e = zArr;
        org.bouncycastle.util.a.q0(zArr, i12 - this.f95501g, i12, true);
        for (int i16 = this.f95500f - this.f95501g; i16 > 0; i16--) {
            int i17 = i16 * 2;
            if (e(i17 + 1) || e(i17 + 2)) {
                this.f95499e[i16] = true;
            }
        }
        this.f95499e[0] = true;
    }

    public int a(int[] iArr, int i10, byte[] bArr, int i11) {
        int[] iArr2 = {0};
        int[] l10 = l(iArr, i10, iArr2);
        for (int i12 = 0; i12 < iArr2[0]; i12++) {
            int i13 = this.f95497c;
            i11 -= i13;
            if (i11 < 0) {
                return -1;
            }
            System.arraycopy(bArr, i12 * i13, this.f95496b[l10[i12]], 0, i13);
            this.f95498d[l10[i12]] = true;
        }
        return i11 != 0 ? -1 : 0;
    }

    public void b(byte[][] bArr, byte[] bArr2) {
        int i10 = this.f95500f - this.f95501g;
        for (int i11 = 0; i11 < this.f95501g; i11++) {
            byte[] bArr3 = bArr[i11];
            if (bArr3 != null) {
                int i12 = i10 + i11;
                System.arraycopy(bArr3, 0, this.f95496b[i12], 0, this.f95497c);
                this.f95498d[i12] = true;
            }
        }
        for (int i13 = this.f95500f; i13 > 0; i13--) {
            c(i13, bArr2);
        }
    }

    public final void c(int i10, byte[] bArr) {
        if (e(i10)) {
            int k10 = k(i10);
            boolean[] zArr = this.f95498d;
            if (zArr[k10]) {
                return;
            }
            int i11 = k10 * 2;
            int i12 = i11 + 1;
            if (zArr[i12]) {
                int i13 = i11 + 2;
                if (!e(i13) || this.f95498d[i13]) {
                    this.f95502h.f95435r.update((byte) 3);
                    h hVar = this.f95502h;
                    hVar.f95435r.update(this.f95496b[i12], 0, hVar.f95433p);
                    if (p(k10)) {
                        h hVar2 = this.f95502h;
                        hVar2.f95435r.update(this.f95496b[i13], 0, hVar2.f95433p);
                    }
                    this.f95502h.f95435r.update(bArr, 0, 32);
                    this.f95502h.f95435r.update(org.bouncycastle.util.p.p(k10), 0, 2);
                    h hVar3 = this.f95502h;
                    hVar3.f95435r.e(this.f95496b[k10], 0, hVar3.f95433p);
                    this.f95498d[k10] = true;
                }
            }
        }
    }

    public final boolean d(int[] iArr, int i10, int i11) {
        for (int i12 = 0; i12 < i10; i12++) {
            if (iArr[i12] == i11) {
                return true;
            }
        }
        return false;
    }

    public final boolean e(int i10) {
        if (i10 >= this.f95500f) {
            return false;
        }
        return this.f95499e[i10];
    }

    public final void f(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[64];
        int k10 = k(this.f95500f - 1);
        for (int i11 = 0; i11 <= k10; i11++) {
            if (this.f95498d[i11]) {
                r(bArr2, this.f95496b[i11], bArr, (byte) 1, i10, i11);
                int i12 = i11 * 2;
                int i13 = i12 + 1;
                if (!this.f95498d[i13]) {
                    System.arraycopy(bArr2, 0, this.f95496b[i13], 0, this.f95502h.f95432o);
                    this.f95498d[i13] = true;
                }
                int i14 = i12 + 2;
                if (e(i14) && !this.f95498d[i14]) {
                    int i15 = this.f95502h.f95432o;
                    System.arraycopy(bArr2, i15, this.f95496b[i14], 0, i15);
                    this.f95498d[i14] = true;
                }
            }
        }
    }

    public void g(byte[] bArr, byte[] bArr2, int i10) {
        this.f95496b[0] = bArr;
        this.f95498d[0] = true;
        f(bArr2, i10);
    }

    public byte[] h(int i10) {
        return this.f95496b[(this.f95500f - this.f95501g) + i10];
    }

    public byte[][] i() {
        return this.f95496b;
    }

    public int j() {
        return this.f95500f - this.f95501g;
    }

    public final int k(int i10) {
        return (t(i10) ? i10 - 1 : i10 - 2) / 2;
    }

    public final int[] l(int[] iArr, int i10, int[] iArr2) {
        int i11 = this.f95500f;
        int i12 = i11 - this.f95501g;
        boolean[] zArr = new boolean[i11];
        for (int i13 = 0; i13 < i10; i13++) {
            zArr[iArr[i13] + i12] = true;
        }
        for (int k10 = k(this.f95500f - 1); k10 > 0; k10--) {
            if (e(k10)) {
                int i14 = k10 * 2;
                int i15 = i14 + 2;
                int i16 = i14 + 1;
                if (e(i15)) {
                    if (zArr[i16] && zArr[i15]) {
                        zArr[k10] = true;
                    }
                } else if (zArr[i16]) {
                    zArr[k10] = true;
                }
            }
        }
        int[] iArr3 = new int[this.f95501g];
        int i17 = 0;
        for (int i18 = 0; i18 < i10; i18++) {
            int i19 = iArr[i18] + i12;
            while (true) {
                if (zArr[k(i19)]) {
                    i19 = k(i19);
                    if (i19 == 0) {
                        break;
                    }
                } else if (!d(iArr3, i17, i19)) {
                    iArr3[i17] = i19;
                    i17++;
                }
            }
        }
        iArr2[0] = i17;
        return iArr3;
    }

    public final int[] m(int[] iArr, int i10, int[] iArr2) {
        int i11 = this.f95495a - 1;
        int[][] iArr3 = (int[][]) Array.newInstance(Integer.TYPE, i11, i10);
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = iArr[i12] + (this.f95500f - this.f95501g);
            iArr3[0][i12] = i13;
            int i14 = 1;
            while (true) {
                i13 = k(i13);
                if (i13 != 0) {
                    iArr3[i14][i12] = i13;
                    i14++;
                }
            }
        }
        int[] iArr4 = new int[this.f95501g];
        int i15 = 0;
        for (int i16 = 0; i16 < i11; i16++) {
            for (int i17 = 0; i17 < i10; i17++) {
                if (q(iArr3[i16][i17])) {
                    int n10 = n(iArr3[i16][i17]);
                    if (!d(iArr3[i16], i10, n10)) {
                        while (!p(n10) && !s(n10)) {
                            n10 = (n10 * 2) + 1;
                        }
                        if (!d(iArr4, i15, n10)) {
                            iArr4[i15] = n10;
                            i15++;
                        }
                    }
                }
            }
        }
        iArr2[0] = i15;
        return iArr4;
    }

    public final int n(int i10) {
        if (!t(i10)) {
            return i10 - 1;
        }
        int i11 = i10 + 1;
        if (i11 < this.f95500f) {
            return i11;
        }
        f95493i.fine("getSibling: request for node with not sibling");
        return 0;
    }

    public boolean o(s sVar, int i10) {
        return (i10 * 2) + 1 < this.f95500f;
    }

    public final boolean p(int i10) {
        return (i10 * 2) + 2 < this.f95500f && e(i10);
    }

    public final boolean q(int i10) {
        if (e(i10)) {
            return !t(i10) || e(i10 + 1);
        }
        return false;
    }

    public final void r(byte[] bArr, byte[] bArr2, byte[] bArr3, byte b10, int i10, int i11) {
        this.f95502h.f95435r.update(b10);
        h hVar = this.f95502h;
        hVar.f95435r.update(bArr2, 0, hVar.f95432o);
        this.f95502h.f95435r.update(bArr3, 0, 32);
        this.f95502h.f95435r.update(org.bouncycastle.util.p.S((short) (i10 & 65535)), 0, 2);
        this.f95502h.f95435r.update(org.bouncycastle.util.p.S((short) (65535 & i11)), 0, 2);
        h hVar2 = this.f95502h;
        hVar2.f95435r.e(bArr, 0, hVar2.f95432o * 2);
    }

    public final boolean s(int i10) {
        return (i10 * 2) + 1 >= this.f95500f;
    }

    public final boolean t(int i10) {
        return i10 % 2 == 1;
    }

    public byte[] u(int[] iArr, int i10, int[] iArr2) {
        int[] iArr3 = new int[1];
        int[] l10 = l(iArr, i10, iArr3);
        int i11 = iArr3[0] * this.f95497c;
        iArr2[0] = i11;
        byte[] bArr = new byte[i11];
        for (int i12 = 0; i12 < iArr3[0]; i12++) {
            byte[] bArr2 = this.f95496b[l10[i12]];
            int i13 = this.f95497c;
            System.arraycopy(bArr2, 0, bArr, i12 * i13, i13);
        }
        return bArr;
    }

    public int v(int[] iArr, int i10) {
        int[] iArr2 = new int[1];
        l(iArr, i10, iArr2);
        return iArr2[0] * this.f95502h.f95433p;
    }

    public int w(int[] iArr, int i10, byte[] bArr, int i11, byte[] bArr2, int i12) {
        int[] iArr2 = {0};
        int[] m10 = m(iArr, i10, iArr2);
        for (int i13 = 0; i13 < iArr2[0]; i13++) {
            int i14 = this.f95502h.f95432o;
            i11 -= i14;
            if (i11 < 0) {
                return -1;
            }
            System.arraycopy(bArr, i13 * i14, this.f95496b[m10[i13]], 0, i14);
            this.f95498d[m10[i13]] = true;
        }
        f(bArr2, i12);
        return 0;
    }

    public int x(int[] iArr, int i10, byte[] bArr, int i11) {
        int[] iArr2 = {0};
        int[] m10 = m(iArr, i10, iArr2);
        for (int i12 = 0; i12 < iArr2[0]; i12++) {
            int i13 = this.f95502h.f95432o;
            i11 -= i13;
            if (i11 < 0) {
                f95493i.fine("Insufficient sized buffer provided to revealSeeds");
                return 0;
            }
            System.arraycopy(this.f95496b[m10[i12]], 0, bArr, i12 * i13, i13);
        }
        return bArr.length - i11;
    }

    public int y(int[] iArr, int i10) {
        int[] iArr2 = {0};
        m(iArr, i10, iArr2);
        return iArr2[0] * this.f95502h.f95432o;
    }

    public int z(byte[][] bArr, byte[] bArr2) {
        int i10 = this.f95500f - this.f95501g;
        for (int i11 = 0; i11 < this.f95501g; i11++) {
            byte[] bArr3 = bArr[i11];
            if (bArr3 != null) {
                int i12 = i10 + i11;
                if (this.f95498d[i12]) {
                    return -1;
                }
                if (bArr3 != null) {
                    System.arraycopy(bArr3, 0, this.f95496b[i12], 0, this.f95497c);
                    this.f95498d[i12] = true;
                }
            }
        }
        for (int i13 = this.f95500f; i13 > 0; i13--) {
            c(i13, bArr2);
        }
        return !this.f95498d[0] ? -1 : 0;
    }
}
