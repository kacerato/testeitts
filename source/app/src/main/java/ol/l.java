package Ol;

import Wl.z;
import java.security.spec.AlgorithmParameterSpec;

public class l implements AlgorithmParameterSpec {

    public static final String f20372g = "SHA-1";

    public static final String f20373h = "SHA-224";

    public static final String f20374i = "SHA-256";

    public static final String f20375j = "SHA-384";

    public static final String f20376k = "SHA-512";

    public static final int f20377l = 11;

    public static final int f20378m = 50;

    public final int f20379b;

    public final int f20380c;

    public final int f20381d;

    public int f20382e;

    public final String f20383f;

    public l() {
        this(11, 50, "SHA-256");
    }

    public String a() {
        return this.f20383f;
    }

    public int b() {
        return this.f20382e;
    }

    public int c() {
        return this.f20379b;
    }

    public int d() {
        return this.f20381d;
    }

    public int e() {
        return this.f20380c;
    }

    public l(int i10) {
        this(i10, "SHA-256");
    }

    public l(int i10, int i11) {
        this(i10, i11, "SHA-256");
    }

    public l(int i10, int i11, int i12) {
        this(i10, i11, i12, "SHA-256");
    }

    public l(int i10, int i11, int i12, String str) {
        this.f20379b = i10;
        if (i10 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i10 > 32) {
            throw new IllegalArgumentException(" m is too large");
        }
        int i13 = 1 << i10;
        this.f20381d = i13;
        this.f20380c = i11;
        if (i11 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i11 > i13) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        if (z.b(i12) != i10 || !z.f(i12)) {
            throw new IllegalArgumentException("polynomial is not a field polynomial for GF(2^m)");
        }
        this.f20382e = i12;
        this.f20383f = str;
    }

    public l(int i10, int i11, String str) {
        if (i10 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i10 > 32) {
            throw new IllegalArgumentException("m is too large");
        }
        this.f20379b = i10;
        int i12 = 1 << i10;
        this.f20381d = i12;
        if (i11 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i11 > i12) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        this.f20380c = i11;
        this.f20382e = z.e(i10);
        this.f20383f = str;
    }

    public l(int i10, String str) {
        int i11 = 1;
        if (i10 < 1) {
            throw new IllegalArgumentException("key size must be positive");
        }
        int i12 = 0;
        while (i11 < i10) {
            i11 <<= 1;
            i12++;
        }
        this.f20380c = (i11 >>> 1) / i12;
        this.f20379b = i12;
        this.f20381d = i11;
        this.f20382e = z.e(i12);
        this.f20383f = str;
    }
}
