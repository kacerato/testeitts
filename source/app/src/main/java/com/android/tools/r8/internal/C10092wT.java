package com.android.tools.r8.internal;

public final class C10092wT {

    public static final boolean f53512c = true;

    public final X7 f53513a;

    public int f53514b = 0;

    public C10092wT(X7 x72) {
        this.f53513a = x72;
    }

    public final void a(int i10) {
        boolean z10 = f53512c;
        if (!z10 && !C8089kT.e(i10)) {
            throw new AssertionError();
        }
        if (!z10 && this.f53514b != 0) {
            throw new AssertionError();
        }
        X7 x72 = this.f53513a;
        if (!C8707o8.f51173a && (i10 < 0 || i10 > 255)) {
            throw new AssertionError();
        }
        x72.a(i10 & 255);
    }

    public final void b(int i10) {
        if (!f53512c && this.f53514b <= 0) {
            throw new AssertionError();
        }
        this.f53514b--;
        X7 x72 = this.f53513a;
        if (!C8707o8.f51173a && (i10 < 0 || i10 > 255)) {
            throw new AssertionError();
        }
        x72.a(i10 & 255);
    }

    public final void a(int i10, int i11) {
        boolean z10 = f53512c;
        if (!z10 && i11 <= 0) {
            throw new AssertionError();
        }
        if (!z10 && this.f53514b != 0) {
            throw new AssertionError();
        }
        X7 x72 = this.f53513a;
        boolean z11 = C8707o8.f51173a;
        if (!z11 && (i10 < 0 || i10 > 255)) {
            throw new AssertionError();
        }
        x72.a(i10 & 255);
        if (i11 <= 255) {
            X7 x73 = this.f53513a;
            if (!z11 && (i11 < 0 || i11 > 255)) {
                throw new AssertionError();
            }
            x73.a(i11 & 255);
        } else {
            this.f53513a.a(0);
            C8707o8.a(i11, (InterfaceC9041q8) this.f53513a);
        }
        this.f53514b = i11;
    }
}
