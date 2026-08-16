package Ol;

import Wl.z;
import java.security.InvalidParameterException;
import java.security.spec.AlgorithmParameterSpec;

public class m implements AlgorithmParameterSpec {

    public static final int f20384f = 11;

    public static final int f20385g = 50;

    public int f20386b;

    public int f20387c;

    public int f20388d;

    public int f20389e;

    public m() {
        this(11, 50);
    }

    public int a() {
        return this.f20389e;
    }

    public int b() {
        return this.f20386b;
    }

    public int c() {
        return this.f20388d;
    }

    public int d() {
        return this.f20387c;
    }

    public m(int i10) {
        if (i10 < 1) {
            throw new IllegalArgumentException("key size must be positive");
        }
        this.f20386b = 0;
        this.f20388d = 1;
        while (true) {
            int i11 = this.f20388d;
            if (i11 >= i10) {
                int i12 = i11 >>> 1;
                this.f20387c = i12;
                int i13 = this.f20386b;
                this.f20387c = i12 / i13;
                this.f20389e = z.e(i13);
                return;
            }
            this.f20388d = i11 << 1;
            this.f20386b++;
        }
    }

    public m(int i10, int i11) throws InvalidParameterException {
        if (i10 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i10 > 32) {
            throw new IllegalArgumentException("m is too large");
        }
        this.f20386b = i10;
        int i12 = 1 << i10;
        this.f20388d = i12;
        if (i11 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i11 > i12) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        this.f20387c = i11;
        this.f20389e = z.e(i10);
    }

    public m(int i10, int i11, int i12) {
        this.f20386b = i10;
        if (i10 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i10 > 32) {
            throw new IllegalArgumentException(" m is too large");
        }
        int i13 = 1 << i10;
        this.f20388d = i13;
        this.f20387c = i11;
        if (i11 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i11 > i13) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        if (z.b(i12) != i10 || !z.f(i12)) {
            throw new IllegalArgumentException("polynomial is not a field polynomial for GF(2^m)");
        }
        this.f20389e = i12;
    }
}
