package com.android.tools.r8.internal;

import java.nio.ShortBuffer;

public final class C5693Op implements InterfaceC10042w8 {

    public static final boolean f43046g = true;

    public final int f43047a;

    public final int f43048b;

    public final ShortBuffer f43049c;

    public int f43051e;

    public int f43050d = 0;

    public boolean f43052f = false;

    public C5693Op(int i10, int i11, ShortBuffer shortBuffer) {
        this.f43048b = i10;
        this.f43047a = i11;
        this.f43049c = shortBuffer;
    }

    public final int a() {
        if (this.f43052f) {
            this.f43052f = false;
            return this.f43051e;
        }
        int b10 = b();
        this.f43051e = b10 & 255;
        this.f43052f = true;
        return (b10 >> 8) & 255;
    }

    public final int b() {
        boolean z10 = f43046g;
        if (!z10 && this.f43052f) {
            throw new AssertionError((Object) "Unread byte in cache.");
        }
        if (!z10 && this.f43050d >= this.f43047a) {
            throw new AssertionError();
        }
        short s10 = this.f43049c.get(this.f43048b + this.f43050d);
        this.f43050d++;
        return s10;
    }
}
