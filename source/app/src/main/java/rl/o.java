package Rl;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Wl.z;

public class o implements InterfaceC2379k {

    public static final int f22933g = 11;

    public static final int f22934h = 50;

    public int f22935b;

    public int f22936c;

    public int f22937d;

    public int f22938e;

    public InterfaceC2392y f22939f;

    public o() {
        this(11, 50);
    }

    public int a() {
        return this.f22938e;
    }

    public int b() {
        return this.f22935b;
    }

    public int c() {
        return this.f22937d;
    }

    public int d() {
        return this.f22936c;
    }

    public o(int i10) {
        this(i10, (InterfaceC2392y) null);
    }

    public o(int i10, int i11) {
        this(i10, i11, (InterfaceC2392y) null);
    }

    public o(int i10, int i11, int i12) {
        this(i10, i11, i12, null);
    }

    public o(int i10, int i11, int i12, InterfaceC2392y interfaceC2392y) {
        this.f22935b = i10;
        if (i10 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i10 > 32) {
            throw new IllegalArgumentException(" m is too large");
        }
        int i13 = 1 << i10;
        this.f22937d = i13;
        this.f22936c = i11;
        if (i11 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i11 > i13) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        if (z.b(i12) != i10 || !z.f(i12)) {
            throw new IllegalArgumentException("polynomial is not a field polynomial for GF(2^m)");
        }
        this.f22938e = i12;
        this.f22939f = interfaceC2392y;
    }

    public o(int i10, int i11, InterfaceC2392y interfaceC2392y) {
        if (i10 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i10 > 32) {
            throw new IllegalArgumentException("m is too large");
        }
        this.f22935b = i10;
        int i12 = 1 << i10;
        this.f22937d = i12;
        if (i11 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i11 > i12) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        this.f22936c = i11;
        this.f22938e = z.e(i10);
        this.f22939f = interfaceC2392y;
    }

    public o(int i10, InterfaceC2392y interfaceC2392y) {
        if (i10 < 1) {
            throw new IllegalArgumentException("key size must be positive");
        }
        this.f22935b = 0;
        this.f22937d = 1;
        while (true) {
            int i11 = this.f22937d;
            if (i11 >= i10) {
                int i12 = i11 >>> 1;
                this.f22936c = i12;
                int i13 = this.f22935b;
                this.f22936c = i12 / i13;
                this.f22938e = z.e(i13);
                this.f22939f = interfaceC2392y;
                return;
            }
            this.f22937d = i11 << 1;
            this.f22935b++;
        }
    }

    public o(InterfaceC2392y interfaceC2392y) {
        this(11, 50, interfaceC2392y);
    }
}
