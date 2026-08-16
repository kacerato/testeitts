package org.bouncycastle.crypto.util;

import yj.InterfaceC16198c;

public class v extends m {

    public final int f101104b;

    public final int f101105c;

    public final int f101106d;

    public final int f101107e;

    public static class b {

        public final int f101108a;

        public final int f101109b;

        public final int f101110c;

        public int f101111d = 16;

        public b(int i10, int i11, int i12) {
            if (i10 <= 1 || !f(i10)) {
                throw new IllegalArgumentException("Cost parameter N must be > 1 and a power of 2");
            }
            this.f101108a = i10;
            this.f101109b = i11;
            this.f101110c = i12;
        }

        public static boolean f(int i10) {
            return (i10 & (i10 + (-1))) == 0;
        }

        public v e() {
            return new v(this);
        }

        public b g(int i10) {
            this.f101111d = i10;
            return this;
        }
    }

    public v(b bVar) {
        super(InterfaceC16198c.f130353O);
        this.f101104b = bVar.f101108a;
        this.f101105c = bVar.f101109b;
        this.f101106d = bVar.f101110c;
        this.f101107e = bVar.f101111d;
    }

    public int b() {
        return this.f101105c;
    }

    public int c() {
        return this.f101104b;
    }

    public int d() {
        return this.f101106d;
    }

    public int e() {
        return this.f101107e;
    }
}
