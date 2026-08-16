package com.android.tools.r8.shaking;

import org.apache.commons.math3.geometry.VectorFormat;

public final class C11196f1 {

    public static final C11196f1 f57267c = new C11196f1(null, C11213g1.f57330b);

    public static final C11196f1 f57268d = new C11196f1(null, C11213g1.f57333e);

    public static final C11196f1 f57269e = new C11196f1(null, C11213g1.f57331c);

    public static final C11196f1 f57270f = new C11196f1(null, C11213g1.f57332d);

    public static final boolean f57271g = true;

    public final com.android.tools.r8.graph.M2 f57272a;

    public final C11213g1 f57273b;

    public C11196f1(com.android.tools.r8.graph.M2 m22, C11213g1 c11213g1) {
        this.f57272a = m22;
        this.f57273b = c11213g1;
    }

    public final boolean a() {
        if (this.f57272a != null) {
            return false;
        }
        C11213g1 c11213g1 = this.f57273b;
        c11213g1.getClass();
        return c11213g1 == C11213g1.f57333e;
    }

    public final String toString() {
        return "KeepAnnotationInfo{type=" + ((Object) this.f57272a) + ", retention=" + ((Object) this.f57273b) + VectorFormat.DEFAULT_SUFFIX;
    }

    public final C11196f1 a(C11196f1 c11196f1) {
        boolean z10 = f57271g;
        if (!z10 && this.f57272a != c11196f1.f57272a) {
            throw new AssertionError();
        }
        if (c11196f1.f57273b.a(this.f57273b)) {
            return this;
        }
        if (this.f57273b.a(c11196f1.f57273b)) {
            return c11196f1;
        }
        com.android.tools.r8.graph.M2 m22 = this.f57272a;
        C11213g1 c11213g1 = this.f57273b;
        C11213g1 c11213g12 = c11196f1.f57273b;
        c11213g1.getClass();
        if (!c11213g12.a(c11213g1)) {
            c11213g1 = c11213g1.a(c11213g12) ? c11213g12 : C11213g1.f57333e;
        }
        if (m22 == null) {
            if (c11213g1 == C11213g1.f57333e) {
                return f57268d;
            }
            if (c11213g1 == C11213g1.f57331c) {
                return f57269e;
            }
            if (c11213g1 == C11213g1.f57332d) {
                return f57270f;
            }
            if (z10 || c11213g1.a()) {
                return f57267c;
            }
            throw new AssertionError();
        }
        return new C11196f1(m22, c11213g1);
    }
}
