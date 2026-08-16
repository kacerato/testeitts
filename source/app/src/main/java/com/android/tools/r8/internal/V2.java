package com.android.tools.r8.internal;

import java.util.Objects;
import org.eclipse.jdt.core.Signature;

public class V2 {

    public static final boolean f44942c = true;

    public final C2 f44943a;

    public final C2 f44944b;

    public V2(C2 c22, C2 c23) {
        if (!f44942c && c23 != null && !c22.d(c23)) {
            throw new AssertionError();
        }
        this.f44943a = c22;
        this.f44944b = c23;
    }

    public boolean a(V2 v22) {
        C2 c22 = this.f44944b;
        if (c22 == null) {
            c22 = C2.B;
        }
        C2 c23 = v22.f44944b;
        if (c23 == null) {
            c23 = C2.B;
        }
        return c22.e(v22.f44943a) && c23.e(this.f44943a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof V2)) {
            return false;
        }
        V2 v22 = (V2) obj;
        return this.f44943a.equals(v22.f44943a) && Objects.equals(this.f44944b, v22.f44944b);
    }

    public final int hashCode() {
        return Objects.hash(this.f44943a, this.f44944b);
    }

    public final String toString() {
        Object obj = this.f44944b;
        if (obj == null) {
            obj = Signature.SIG_BYTE;
        }
        return "[ " + obj + " ; " + ((Object) this.f44943a) + " ]";
    }
}
