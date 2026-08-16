package com.android.tools.r8.graph;

import com.android.tools.r8.shaking.C11245i;
import java.util.function.Consumer;

public class C4425e4 {

    public static final boolean f37145e = true;

    public final int f37146a;

    public final M2 f37147b;

    public final M2 f37148c;

    public final L2 f37149d;

    public C4425e4(int i10, M2 m22, M2 m23, L2 l22) {
        if (!f37145e && m22 == null) {
            throw new AssertionError();
        }
        this.f37146a = i10;
        this.f37147b = m22;
        this.f37148c = m23;
        this.f37149d = l22;
    }

    public final void a(Consumer consumer) {
        M2 m22 = this.f37147b;
        if (m22 != null) {
            consumer.accept(m22);
        }
        M2 m23 = this.f37148c;
        if (m23 != null) {
            consumer.accept(m23);
        }
    }

    public M2 b() {
        return this.f37147b;
    }

    public L2 c() {
        return this.f37149d;
    }

    public M2 d() {
        return this.f37148c;
    }

    public final boolean e() {
        return this.f37149d != null;
    }

    public final String toString() {
        String hexString = Integer.toHexString(this.f37146a);
        String V02 = this.f37147b.V0();
        M2 m22 = this.f37148c;
        String V03 = m22 == null ? "null" : m22.V0();
        L2 l22 = this.f37149d;
        return "[access : " + hexString + ", inner: " + V02 + ", outer: " + V03 + ", innerName: " + (l22 == null ? "(anonymous)" : l22.toString()) + "]";
    }

    public int a() {
        return this.f37146a;
    }

    public final M2 a(C4798y c4798y) {
        E0 g10;
        M2 d10 = d();
        if (d10 != null || (g10 = c4798y.g(b())) == null || g10.O0() == null) {
            return d10;
        }
        C4500i3 O02 = g10.O0();
        M2 m22 = O02.f37289a;
        if (m22 != null) {
            return m22;
        }
        A2 a10 = O02.a();
        if (((C11245i) c4798y.f()).f57403r.contains(a10)) {
            return a10.f38297f;
        }
        return null;
    }
}
