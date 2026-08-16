package Wl;

import java.security.SecureRandom;

public class y {

    public static final char f27869d = 'I';

    public h f27870a;

    public int f27871b;

    public int[] f27872c;

    public y(h hVar) {
        this.f27870a = hVar;
        this.f27871b = -1;
        this.f27872c = new int[1];
    }

    public static int[] I(int[] iArr, int i10) {
        int e10 = e(iArr);
        if (e10 == -1) {
            return new int[1];
        }
        int[] iArr2 = new int[e10 + i10 + 1];
        System.arraycopy(iArr, 0, iArr2, i10, e10 + 1);
        return iArr2;
    }

    public static int[] L(int[] iArr) {
        int e10 = e(iArr);
        if (e10 == -1) {
            return new int[1];
        }
        int i10 = e10 + 1;
        if (iArr.length == i10) {
            return t.a(iArr);
        }
        int[] iArr2 = new int[i10];
        System.arraycopy(iArr, 0, iArr2, 0, i10);
        return iArr2;
    }

    public static int e(int[] iArr) {
        int length = iArr.length - 1;
        while (length >= 0 && iArr[length] == 0) {
            length--;
        }
        return length;
    }

    public static int q(int[] iArr) {
        int e10 = e(iArr);
        if (e10 == -1) {
            return 0;
        }
        return iArr[e10];
    }

    public static boolean r(int[] iArr, int[] iArr2) {
        int e10 = e(iArr);
        if (e10 != e(iArr2)) {
            return false;
        }
        for (int i10 = 0; i10 <= e10; i10++) {
            if (iArr[i10] != iArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    public y[] A(y yVar) {
        int i10 = yVar.f27871b >> 1;
        int[] L10 = L(yVar.f27872c);
        int[] u10 = u(this.f27872c, yVar.f27872c);
        int[] iArr = {0};
        int[] iArr2 = {1};
        while (e(u10) > i10) {
            int[][] i11 = i(L10, u10);
            int[] iArr3 = i11[1];
            int[] b10 = b(iArr, z(i11[0], iArr2, yVar.f27872c));
            iArr = iArr2;
            iArr2 = b10;
            L10 = u10;
            u10 = iArr3;
        }
        return new y[]{new y(this.f27870a, u10), new y(this.f27870a, iArr2)};
    }

    public y B(y[] yVarArr) {
        int length = yVarArr.length;
        int[] iArr = new int[length];
        int[] iArr2 = new int[length];
        int i10 = 0;
        while (true) {
            int[] iArr3 = this.f27872c;
            if (i10 >= iArr3.length) {
                break;
            }
            h hVar = this.f27870a;
            int i11 = iArr3[i10];
            iArr2[i10] = hVar.l(i11, i11);
            i10++;
        }
        for (int i12 = 0; i12 < length; i12++) {
            for (int i13 = 0; i13 < length; i13++) {
                int[] iArr4 = yVarArr[i13].f27872c;
                if (i12 < iArr4.length) {
                    iArr[i12] = this.f27870a.a(iArr[i12], this.f27870a.l(iArr4[i12], iArr2[i13]));
                }
            }
        }
        return new y(this.f27870a, iArr);
    }

    public y C(y yVar) {
        int[] a10 = t.a(this.f27872c);
        int[] z10 = z(a10, a10, yVar.f27872c);
        while (!r(z10, this.f27872c)) {
            a10 = L(z10);
            z10 = z(a10, a10, yVar.f27872c);
        }
        return new y(this.f27870a, a10);
    }

    public y D(y[] yVarArr) {
        int length = yVarArr.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            for (int i11 = 0; i11 < length; i11++) {
                int[] iArr2 = yVarArr[i11].f27872c;
                if (i10 < iArr2.length) {
                    int[] iArr3 = this.f27872c;
                    if (i11 < iArr3.length) {
                        iArr[i10] = this.f27870a.a(iArr[i10], this.f27870a.l(iArr2[i10], iArr3[i11]));
                    }
                }
            }
        }
        for (int i12 = 0; i12 < length; i12++) {
            iArr[i12] = this.f27870a.n(iArr[i12]);
        }
        return new y(this.f27870a, iArr);
    }

    public void E(int i10) {
        if (!this.f27870a.k(i10)) {
            throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
        }
        this.f27872c = G(this.f27872c, i10);
        f();
    }

    public y F(int i10) {
        if (!this.f27870a.k(i10)) {
            throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
        }
        return new y(this.f27870a, G(this.f27872c, i10));
    }

    public final int[] G(int[] iArr, int i10) {
        int e10 = e(iArr);
        if (e10 == -1 || i10 == 0) {
            return new int[1];
        }
        if (i10 == 1) {
            return t.a(iArr);
        }
        int[] iArr2 = new int[e10 + 1];
        while (e10 >= 0) {
            iArr2[e10] = this.f27870a.l(iArr[e10], i10);
            e10--;
        }
        return iArr2;
    }

    public y H(int i10) {
        return new y(this.f27870a, I(this.f27872c, i10));
    }

    public y J(y yVar) {
        return new y(this.f27870a, K(this.f27872c, yVar.f27872c));
    }

    public final int[] K(int[] iArr, int[] iArr2) {
        if (e(iArr) < e(iArr2)) {
            iArr2 = iArr;
            iArr = iArr2;
        }
        int[] L10 = L(iArr);
        int[] L11 = L(iArr2);
        if (L11.length == 1) {
            return G(L10, L11[0]);
        }
        int length = L10.length;
        int length2 = L11.length;
        int[] iArr3 = new int[(length + length2) - 1];
        if (length2 != length) {
            int[] iArr4 = new int[length2];
            int i10 = length - length2;
            int[] iArr5 = new int[i10];
            System.arraycopy(L10, 0, iArr4, 0, length2);
            System.arraycopy(L10, length2, iArr5, 0, i10);
            return b(K(iArr4, L11), I(K(iArr5, L11), length2));
        }
        int i11 = (length + 1) >>> 1;
        int i12 = length - i11;
        int[] iArr6 = new int[i11];
        int[] iArr7 = new int[i11];
        int[] iArr8 = new int[i12];
        int[] iArr9 = new int[i12];
        System.arraycopy(L10, 0, iArr6, 0, i11);
        System.arraycopy(L10, i11, iArr8, 0, i12);
        System.arraycopy(L11, 0, iArr7, 0, i11);
        System.arraycopy(L11, i11, iArr9, 0, i12);
        int[] b10 = b(iArr6, iArr8);
        int[] b11 = b(iArr7, iArr9);
        int[] K10 = K(iArr6, iArr7);
        int[] K11 = K(b10, b11);
        int[] K12 = K(iArr8, iArr9);
        return b(I(b(b(b(K11, K10), K12), I(K12, i11)), i11), K10);
    }

    public y a(y yVar) {
        return new y(this.f27870a, b(this.f27872c, yVar.f27872c));
    }

    public final int[] b(int[] iArr, int[] iArr2) {
        int[] iArr3;
        if (iArr.length < iArr2.length) {
            iArr3 = new int[iArr2.length];
            System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
        } else {
            iArr3 = new int[iArr.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            iArr = iArr2;
        }
        for (int length = iArr.length - 1; length >= 0; length--) {
            iArr3[length] = this.f27870a.a(iArr3[length], iArr[length]);
        }
        return iArr3;
    }

    public y c(int i10) {
        int[] iArr = new int[i10 + 1];
        iArr[i10] = 1;
        return new y(this.f27870a, b(this.f27872c, iArr));
    }

    public void d(y yVar) {
        this.f27872c = b(this.f27872c, yVar.f27872c);
        f();
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof y)) {
            y yVar = (y) obj;
            if (this.f27870a.equals(yVar.f27870a) && this.f27871b == yVar.f27871b && r(this.f27872c, yVar.f27872c)) {
                return true;
            }
        }
        return false;
    }

    public final void f() {
        int length = this.f27872c.length;
        do {
            this.f27871b = length - 1;
            length = this.f27871b;
            if (length < 0) {
                return;
            }
        } while (this.f27872c[length] == 0);
    }

    public final int[] g(int i10, SecureRandom secureRandom) {
        int[] iArr = new int[i10 + 1];
        iArr[i10] = 1;
        iArr[0] = this.f27870a.i(secureRandom);
        for (int i11 = 1; i11 < i10; i11++) {
            iArr[i11] = this.f27870a.g(secureRandom);
        }
        while (!s(iArr)) {
            int a10 = B.a(secureRandom, i10);
            if (a10 == 0) {
                iArr[0] = this.f27870a.i(secureRandom);
            } else {
                iArr[a10] = this.f27870a.g(secureRandom);
            }
        }
        return iArr;
    }

    public y[] h(y yVar) {
        int[][] i10 = i(this.f27872c, yVar.f27872c);
        return new y[]{new y(this.f27870a, i10[0]), new y(this.f27870a, i10[1])};
    }

    public int hashCode() {
        int hashCode = this.f27870a.hashCode();
        int i10 = 0;
        while (true) {
            int[] iArr = this.f27872c;
            if (i10 >= iArr.length) {
                return hashCode;
            }
            hashCode = (hashCode * 31) + iArr[i10];
            i10++;
        }
    }

    public final int[][] i(int[] iArr, int[] iArr2) {
        int e10 = e(iArr2);
        int e11 = e(iArr) + 1;
        if (e10 == -1) {
            throw new ArithmeticException("Division by zero.");
        }
        int[][] iArr3 = {new int[1], new int[e11]};
        int j10 = this.f27870a.j(q(iArr2));
        iArr3[0][0] = 0;
        int[] iArr4 = iArr3[1];
        System.arraycopy(iArr, 0, iArr4, 0, iArr4.length);
        while (e10 <= e(iArr3[1])) {
            int[] iArr5 = {this.f27870a.l(q(iArr3[1]), j10)};
            int[] G10 = G(iArr2, iArr5[0]);
            int e12 = e(iArr3[1]) - e10;
            int[] I10 = I(G10, e12);
            iArr3[0] = b(I(iArr5, e12), iArr3[0]);
            iArr3[1] = b(I10, iArr3[1]);
        }
        return iArr3;
    }

    public int j(int i10) {
        int[] iArr = this.f27872c;
        int i11 = this.f27871b;
        int i12 = iArr[i11];
        for (int i13 = i11 - 1; i13 >= 0; i13--) {
            i12 = this.f27870a.l(i12, i10) ^ this.f27872c[i13];
        }
        return i12;
    }

    public y k(y yVar) {
        return new y(this.f27870a, l(this.f27872c, yVar.f27872c));
    }

    public final int[] l(int[] iArr, int[] iArr2) {
        if (e(iArr) == -1) {
            return iArr2;
        }
        while (e(iArr2) != -1) {
            int[] u10 = u(iArr, iArr2);
            int length = iArr2.length;
            int[] iArr3 = new int[length];
            System.arraycopy(iArr2, 0, iArr3, 0, length);
            int length2 = u10.length;
            int[] iArr4 = new int[length2];
            System.arraycopy(u10, 0, iArr4, 0, length2);
            iArr2 = iArr4;
            iArr = iArr3;
        }
        return G(iArr, this.f27870a.j(q(iArr)));
    }

    public int m(int i10) {
        if (i10 < 0 || i10 > this.f27871b) {
            return 0;
        }
        return this.f27872c[i10];
    }

    public int n() {
        int[] iArr = this.f27872c;
        int length = iArr.length - 1;
        if (iArr[length] == 0) {
            return -1;
        }
        return length;
    }

    public byte[] o() {
        int i10 = 8;
        int i11 = 1;
        while (this.f27870a.d() > i10) {
            i11++;
            i10 += 8;
        }
        byte[] bArr = new byte[this.f27872c.length * i11];
        int i12 = 0;
        for (int i13 = 0; i13 < this.f27872c.length; i13++) {
            int i14 = 0;
            while (i14 < i10) {
                bArr[i12] = (byte) (this.f27872c[i13] >>> i14);
                i14 += 8;
                i12++;
            }
        }
        return bArr;
    }

    public int p() {
        int i10 = this.f27871b;
        if (i10 == -1) {
            return 0;
        }
        return this.f27872c[i10];
    }

    public final boolean s(int[] iArr) {
        if (iArr[0] == 0) {
            return false;
        }
        int e10 = e(iArr) >> 1;
        int[] iArr2 = {0, 1};
        int[] iArr3 = {0, 1};
        int d10 = this.f27870a.d();
        for (int i10 = 0; i10 < e10; i10++) {
            for (int i11 = d10 - 1; i11 >= 0; i11--) {
                iArr2 = z(iArr2, iArr2, iArr);
            }
            iArr2 = L(iArr2);
            if (e(l(b(iArr2, iArr3), iArr)) != 0) {
                return false;
            }
        }
        return true;
    }

    public y t(y yVar) {
        return new y(this.f27870a, u(this.f27872c, yVar.f27872c));
    }

    public String toString() {
        String str = " Polynomial over " + this.f27870a.toString() + ": \n";
        for (int i10 = 0; i10 < this.f27872c.length; i10++) {
            str = str + this.f27870a.b(this.f27872c[i10]) + "Y^" + i10 + "+";
        }
        return str + ";";
    }

    public final int[] u(int[] iArr, int[] iArr2) {
        int e10 = e(iArr2);
        if (e10 == -1) {
            throw new ArithmeticException("Division by zero");
        }
        int length = iArr.length;
        int[] iArr3 = new int[length];
        int j10 = this.f27870a.j(q(iArr2));
        System.arraycopy(iArr, 0, iArr3, 0, length);
        while (e10 <= e(iArr3)) {
            iArr3 = b(G(I(iArr2, e(iArr3) - e10), this.f27870a.l(q(iArr3), j10)), iArr3);
        }
        return iArr3;
    }

    public y v(y yVar, y yVar2) {
        return new y(this.f27870a, w(this.f27872c, yVar.f27872c, yVar2.f27872c));
    }

    public final int[] w(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] L10 = L(iArr3);
        int[] u10 = u(iArr2, iArr3);
        int[] iArr4 = {0};
        int[] u11 = u(iArr, iArr3);
        while (e(u10) != -1) {
            int[][] i10 = i(L10, u10);
            int[] L11 = L(u10);
            int[] L12 = L(i10[1]);
            int[] b10 = b(iArr4, z(i10[0], u11, iArr3));
            iArr4 = L(u11);
            u11 = L(b10);
            L10 = L11;
            u10 = L12;
        }
        return G(iArr4, this.f27870a.j(q(L10)));
    }

    public y x(y yVar) {
        return new y(this.f27870a, w(new int[]{1}, this.f27872c, yVar.f27872c));
    }

    public y y(y yVar, y yVar2) {
        return new y(this.f27870a, z(this.f27872c, yVar.f27872c, yVar2.f27872c));
    }

    public final int[] z(int[] iArr, int[] iArr2, int[] iArr3) {
        return u(K(iArr, iArr2), iArr3);
    }

    public y(h hVar, int i10) {
        this.f27870a = hVar;
        this.f27871b = i10;
        int[] iArr = new int[i10 + 1];
        this.f27872c = iArr;
        iArr[i10] = 1;
    }

    public y(h hVar, int i10, char c10, SecureRandom secureRandom) {
        this.f27870a = hVar;
        if (c10 == 'I') {
            this.f27872c = g(i10, secureRandom);
            f();
        } else {
            throw new IllegalArgumentException(" Error: type " + c10 + " is not defined for GF2smallmPolynomial");
        }
    }

    public y(h hVar, byte[] bArr) {
        this.f27870a = hVar;
        int i10 = 8;
        int i11 = 1;
        while (hVar.d() > i10) {
            i11++;
            i10 += 8;
        }
        if (bArr.length % i11 != 0) {
            throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
        }
        this.f27872c = new int[bArr.length / i11];
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int[] iArr = this.f27872c;
            if (i12 >= iArr.length) {
                if (iArr.length != 1 && iArr[iArr.length - 1] == 0) {
                    throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
                }
                f();
                return;
            }
            int i14 = 0;
            while (i14 < i10) {
                int[] iArr2 = this.f27872c;
                iArr2[i12] = ((bArr[i13] & 255) << i14) ^ iArr2[i12];
                i14 += 8;
                i13++;
            }
            if (!this.f27870a.k(this.f27872c[i12])) {
                throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
            }
            i12++;
        }
    }

    public y(h hVar, int[] iArr) {
        this.f27870a = hVar;
        this.f27872c = L(iArr);
        f();
    }

    public y(j jVar) {
        this(jVar.f(), jVar.g());
    }

    public y(y yVar) {
        this.f27870a = yVar.f27870a;
        this.f27871b = yVar.f27871b;
        this.f27872c = t.a(yVar.f27872c);
    }
}
