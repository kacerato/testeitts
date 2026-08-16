package com.android.tools.r8.graph;

public final class C4500i3 {

    public static final boolean f37288c = true;

    public final M2 f37289a;

    public final A2 f37290b;

    public C4500i3(M2 m22) {
        this.f37289a = m22;
    }

    public A2 a() {
        return this.f37290b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C4500i3)) {
            return false;
        }
        C4500i3 c4500i3 = (C4500i3) obj;
        return this.f37289a == c4500i3.f37289a && this.f37290b == c4500i3.f37290b;
    }

    public final int hashCode() {
        if (!f37288c) {
            if ((this.f37289a == null) == (this.f37290b == null)) {
                throw new AssertionError();
            }
        }
        return System.identityHashCode(this.f37290b) + System.identityHashCode(this.f37289a);
    }

    public final String toString() {
        M2 m22 = this.f37289a;
        String V02 = m22 == null ? "null" : m22.V0();
        A2 a22 = this.f37290b;
        return "[enclosingClass: " + V02 + ", enclosingMethod: " + (a22 != null ? a22.j0() : "null") + "]";
    }

    public C4500i3(A2 a22) {
        this.f37290b = a22;
    }
}
