package com.android.tools.r8.internal;

public class C8939pa0 {

    public static final boolean f51556g = true;

    public final int f51557a;

    public final boolean f51558b;

    public final boolean f51559c;

    public final boolean f51560d;

    public final boolean f51561e;

    public final boolean f51562f;

    public C8939pa0(int i10, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        this.f51557a = i10;
        this.f51558b = z10;
        this.f51559c = z11;
        this.f51560d = z12;
        this.f51561e = z13;
        this.f51562f = z14;
        if (f51556g) {
            return;
        }
        d();
    }

    public C5079Ea0 a() {
        return null;
    }

    public boolean b() {
        return (c() || this.f51557a == 50) ? false : true;
    }

    public boolean c() {
        return this.f51557a <= 17;
    }

    public void d() {
        if (!f51556g && this.f51557a >= 51) {
            throw new AssertionError();
        }
    }

    public final int e() {
        int i10 = this.f51557a;
        if (this.f51558b) {
            i10 |= 256;
        }
        if (this.f51559c) {
            i10 |= 512;
        }
        if (this.f51560d) {
            i10 |= 1024;
        }
        if (this.f51561e) {
            i10 |= 2048;
        }
        return this.f51562f ? i10 | 4096 : i10;
    }

    public boolean a(boolean z10) {
        if (c()) {
            return z10 || this.f51562f;
        }
        return false;
    }

    public int a(boolean z10, C9106qa0 c9106qa0) {
        int i10 = this.f51557a;
        if (i10 != 12) {
            if (i10 != 27) {
                if (i10 != 30 && i10 != 44) {
                    if (i10 != 49) {
                        if (i10 != 50) {
                            return 1;
                        }
                        return C8704o7.a(this.f51561e) + 2;
                    }
                }
            }
            return 2;
        }
        return C8704o7.a(z10 || this.f51561e) + 1;
    }
}
