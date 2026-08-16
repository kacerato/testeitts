package com.android.tools.r8.graph;

public final class W {

    public static final boolean f36919c = true;

    public I5 f36920a;

    public C4725u2 f36921b;

    public final W a(H2 h22) {
        if (!f36919c && this.f36920a != null) {
            throw new AssertionError();
        }
        this.f36920a = h22;
        return this;
    }

    public final W a(I0 i02) {
        if (!f36919c && this.f36920a != null) {
            throw new AssertionError();
        }
        this.f36920a = i02;
        return this;
    }

    public final W a(C4725u2 c4725u2) {
        if (!f36919c && this.f36921b != null) {
            throw new AssertionError();
        }
        this.f36921b = c4725u2;
        return this;
    }

    public final InterfaceC4364b0 a() {
        I5 i52 = this.f36920a;
        if (i52 == null && this.f36921b == null) {
            return Z.f37008b;
        }
        if (i52 == null) {
            return this.f36921b;
        }
        if (this.f36921b == null) {
            return i52;
        }
        if (i52.e0()) {
            return new C4345a0(this.f36920a.d0(), this.f36921b);
        }
        if (!f36919c) {
            E0 e02 = (E0) this.f36920a;
            e02.getClass();
            if (!(e02 instanceof I0)) {
                throw new AssertionError();
            }
        }
        return new X(this.f36920a.k(), this.f36921b);
    }
}
