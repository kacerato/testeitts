package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Objects;

public final class C5962Tf extends AbstractC5904Sf {

    public static final boolean f44523d = true;

    public C5962Tf(InterfaceC6078Vf interfaceC6078Vf, InterfaceC6078Vf interfaceC6078Vf2) {
        super(interfaceC6078Vf, interfaceC6078Vf2);
    }

    @Override
    public final F1 a(C4798y c4798y, InterfaceC5825Qx interfaceC5825Qx) {
        if (!f44523d) {
            T10.f44369e.getClass();
        }
        F1 a10 = this.f44263a.a(c4798y, interfaceC5825Qx);
        a10.getClass();
        if (a10 instanceof A7) {
            return a10;
        }
        F1 a11 = this.f44264b.a(c4798y, interfaceC5825Qx);
        a11.getClass();
        return a11 instanceof A7 ? a11 : AbstractC8348m.b(c4798y, a10, a11);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5962Tf)) {
            return false;
        }
        C5962Tf c5962Tf = (C5962Tf) obj;
        return this.f44263a.equals(c5962Tf.f44263a) && this.f44264b.equals(c5962Tf.f44264b);
    }

    public final int hashCode() {
        return Objects.hash(C5962Tf.class, this.f44263a, this.f44264b);
    }

    public final String toString() {
        return this.f44263a.p() + " | " + this.f44264b.p();
    }
}
