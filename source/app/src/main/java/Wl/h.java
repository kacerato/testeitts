package Wl;

import java.security.SecureRandom;

public class h {

    public int f27814a;

    public int f27815b;

    public h(int i10) {
        this.f27814a = 0;
        if (i10 >= 32) {
            throw new IllegalArgumentException(" Error: the degree of field is too large ");
        }
        if (i10 < 1) {
            throw new IllegalArgumentException(" Error: the degree of field is non-positive ");
        }
        this.f27814a = i10;
        this.f27815b = z.e(i10);
    }

    public static String m(int i10) {
        if (i10 == 0) {
            return "0";
        }
        String str = ((byte) (i10 & 1)) == 1 ? "1" : "";
        int i11 = i10 >>> 1;
        int i12 = 1;
        while (i11 != 0) {
            if (((byte) (i11 & 1)) == 1) {
                str = str + "+x^" + i12;
            }
            i11 >>>= 1;
            i12++;
        }
        return str;
    }

    public int a(int i10, int i11) {
        return i10 ^ i11;
    }

    public String b(int i10) {
        StringBuilder sb2;
        String str;
        String str2 = "";
        for (int i11 = 0; i11 < this.f27814a; i11++) {
            if ((((byte) i10) & 1) == 0) {
                sb2 = new StringBuilder();
                str = "0";
            } else {
                sb2 = new StringBuilder();
                str = "1";
            }
            sb2.append(str);
            sb2.append(str2);
            str2 = sb2.toString();
            i10 >>>= 1;
        }
        return str2;
    }

    public int c(int i10, int i11) {
        if (i11 == 0) {
            return 1;
        }
        if (i10 == 0) {
            return 0;
        }
        if (i10 == 1) {
            return 1;
        }
        if (i11 < 0) {
            i10 = j(i10);
            i11 = -i11;
        }
        int i12 = 1;
        while (i11 != 0) {
            if ((i11 & 1) == 1) {
                i12 = l(i12, i10);
            }
            i10 = l(i10, i10);
            i11 >>>= 1;
        }
        return i12;
    }

    public int d() {
        return this.f27814a;
    }

    public byte[] e() {
        return v.d(this.f27815b);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof h)) {
            h hVar = (h) obj;
            if (this.f27814a == hVar.f27814a && this.f27815b == hVar.f27815b) {
                return true;
            }
        }
        return false;
    }

    public int f() {
        return this.f27815b;
    }

    public int g(SecureRandom secureRandom) {
        return B.a(secureRandom, 1 << this.f27814a);
    }

    public int h() {
        return i(Bi.r.h());
    }

    public int hashCode() {
        return this.f27815b;
    }

    public int i(SecureRandom secureRandom) {
        int a10 = B.a(secureRandom, 1 << this.f27814a);
        int i10 = 0;
        while (a10 == 0 && i10 < 1048576) {
            a10 = B.a(secureRandom, 1 << this.f27814a);
            i10++;
        }
        if (i10 == 1048576) {
            return 1;
        }
        return a10;
    }

    public int j(int i10) {
        return c(i10, (1 << this.f27814a) - 2);
    }

    public boolean k(int i10) {
        int i11 = this.f27814a;
        return i11 == 31 ? i10 >= 0 : i10 >= 0 && i10 < (1 << i11);
    }

    public int l(int i10, int i11) {
        return z.g(i10, i11, this.f27815b);
    }

    public int n(int i10) {
        for (int i11 = 1; i11 < this.f27814a; i11++) {
            i10 = l(i10, i10);
        }
        return i10;
    }

    public String toString() {
        return "Finite Field GF(2^" + this.f27814a + ") = GF(2)[X]/<" + m(this.f27815b) + "> ";
    }

    public h(int i10, int i11) {
        this.f27814a = 0;
        if (i10 != z.b(i11)) {
            throw new IllegalArgumentException(" Error: the degree is not correct");
        }
        if (!z.f(i11)) {
            throw new IllegalArgumentException(" Error: given polynomial is reducible");
        }
        this.f27814a = i10;
        this.f27815b = i11;
    }

    public h(h hVar) {
        this.f27814a = 0;
        this.f27814a = hVar.f27814a;
        this.f27815b = hVar.f27815b;
    }

    public h(byte[] bArr) {
        this.f27814a = 0;
        if (bArr.length != 4) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        int f10 = v.f(bArr);
        this.f27815b = f10;
        if (!z.f(f10)) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        this.f27814a = z.b(this.f27815b);
    }
}
