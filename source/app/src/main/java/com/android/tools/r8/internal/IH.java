package com.android.tools.r8.internal;

public class IH {

    public static final boolean f41049b = true;

    public int f41050a;

    public IH() {
    }

    public void a(int i10) {
        if (!f41049b && i10 <= 0) {
            throw new AssertionError();
        }
        this.f41050a -= i10;
    }

    public int b() {
        int i10 = this.f41050a;
        c(1);
        return i10;
    }

    public void c() {
        c(1);
    }

    public int d() {
        c(1);
        return a();
    }

    public IH(int i10) {
        d(i10);
    }

    public void c(int i10) {
        if (!f41049b && i10 < 0) {
            throw new AssertionError();
        }
        this.f41050a += i10;
    }

    public int a() {
        return this.f41050a;
    }

    public final int b(int i10) {
        int i11 = this.f41050a;
        c(i10);
        return i11;
    }

    public void d(int i10) {
        this.f41050a = i10;
    }

    public void a(boolean z10) {
        if (z10) {
            c();
        }
    }
}
