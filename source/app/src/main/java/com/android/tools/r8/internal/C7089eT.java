package com.android.tools.r8.internal;

import java.util.Iterator;

public class C7089eT implements Iterator<InterfaceC6923dT>, InterfaceC6923dT {

    public static final boolean f47684g = true;

    public final W7 f47685b;

    public int f47686c = 0;

    public int f47687d = 0;

    public int f47688e = -1;

    public int f47689f = -1;

    public C7089eT(W7 w72) {
        this.f47685b = w72;
    }

    @Override
    public void a(InterfaceC6756cT interfaceC6756cT) {
        interfaceC6756cT.a(this);
    }

    @Override
    public final int b() {
        return g();
    }

    @Override
    public final long d() {
        if (!f47684g && !e()) {
            throw new AssertionError();
        }
        this.f47686c += 8;
        W7 w72 = this.f47685b;
        boolean z10 = C8707o8.f51173a;
        return ((w72.a() & 255) << 56) | ((w72.a() & 255) << 48) | ((w72.a() & 255) << 40) | ((w72.a() & 255) << 32) | ((w72.a() & 255) << 24) | ((w72.a() & 255) << 16) | ((w72.a() & 255) << 8) | (w72.a() & 255);
    }

    @Override
    public final boolean e() {
        return this.f47686c < this.f47687d;
    }

    @Override
    public final int f() {
        return this.f47688e;
    }

    @Override
    public final int g() {
        if (f47684g || e()) {
            return t();
        }
        throw new AssertionError();
    }

    @Override
    public boolean hasNext() {
        if (e()) {
            int i10 = this.f47687d;
            int i11 = this.f47686c;
            int i12 = i10 - i11;
            this.f47686c = i11 + i12;
            W7 w72 = this.f47685b;
            int i13 = w72.f45309d;
            int i14 = i13 + i12;
            int i15 = w72.f45307b;
            if (i14 > i15) {
                i12 = i15 - i13;
            }
            w72.f45309d = i13 + i12;
        }
        return this.f47685b.hasNext();
    }

    @Override
    public final int j() {
        this.f47686c++;
        byte a10 = this.f47685b.a();
        boolean z10 = C8707o8.f51173a;
        return a10 & 255;
    }

    @Override
    public final int k() {
        return g();
    }

    @Override
    public final int m() {
        return this.f47687d - this.f47686c;
    }

    @Override
    public final int o() {
        return g();
    }

    @Override
    public InterfaceC6923dT next() {
        if (e()) {
            int i10 = this.f47687d;
            int i11 = this.f47686c;
            int i12 = i10 - i11;
            this.f47686c = i11 + i12;
            W7 w72 = this.f47685b;
            int i13 = w72.f45309d;
            int i14 = i13 + i12;
            int i15 = w72.f45307b;
            if (i14 > i15) {
                i12 = i15 - i13;
            }
            w72.f45309d = i13 + i12;
        }
        this.f47688e++;
        this.f47686c++;
        byte a10 = this.f47685b.a();
        boolean z10 = C8707o8.f51173a;
        int i16 = a10 & 255;
        this.f47689f = i16;
        if (C8089kT.e(i16)) {
            this.f47687d = this.f47686c;
            return this;
        }
        this.f47686c++;
        int a11 = this.f47685b.a() & 255;
        if (a11 == 0) {
            a11 = t();
        }
        this.f47687d = this.f47686c + a11;
        return this;
    }

    public final int t() {
        this.f47686c += 4;
        W7 w72 = this.f47685b;
        boolean z10 = C8707o8.f51173a;
        return (w72.a() & 255) | ((w72.a() & 255) << 24) | ((w72.a() & 255) << 16) | ((w72.a() & 255) << 8);
    }

    @Override
    public final int a() {
        return this.f47689f;
    }

    @Override
    public final int a(WS ws) {
        return ws.f45407i + this.f47688e;
    }
}
