package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.Objects;

public final class C7167ev0 extends AbstractC6668bv0 {

    public static final boolean f47806e = true;

    public final C8103ka f47807c;

    public final com.android.tools.r8.graph.M2 f47808d;

    public C7167ev0(com.android.tools.r8.graph.M2 m22, C8103ka c8103ka) {
        if (!f47806e && m22 != null && !m22.I0()) {
            throw new AssertionError();
        }
        this.f47807c = c8103ka;
        this.f47808d = m22;
    }

    @Override
    public final C8103ka H() {
        return this.f47807c;
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22) {
        return this.f47808d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C7167ev0.class == obj.getClass()) {
            C7167ev0 c7167ev0 = (C7167ev0) obj;
            if (this.f47807c == c7167ev0.f47807c && this.f47808d == c7167ev0.f47808d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f47807c, this.f47808d);
    }

    @Override
    public final com.android.tools.r8.graph.M2 j() {
        return this.f47808d;
    }

    public final String toString() {
        return "uninitialized new";
    }

    @Override
    public final C7167ev0 z() {
        return this;
    }

    @Override
    public final Object a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC10992r0 abstractC10992r0) {
        return this.f47807c.V();
    }

    @Override
    public final InterfaceC5225Gm0 a(C4798y c4798y, InterfaceC5225Gm0 interfaceC5225Gm0) {
        return equals(interfaceC5225Gm0) ? this : C7028e40.f47586c;
    }
}
