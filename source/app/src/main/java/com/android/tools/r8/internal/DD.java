package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;

public final class DD extends BD {

    public static final boolean f39469d = true;

    public final com.android.tools.r8.graph.M2 f39470c;

    public DD(com.android.tools.r8.graph.M2 m22) {
        boolean z10 = f39469d;
        if (!z10 && m22 == null) {
            throw new AssertionError();
        }
        if (!z10 && !m22.Q0()) {
            throw new AssertionError();
        }
        if (!z10 && m22.N0()) {
            throw new AssertionError();
        }
        this.f39470c = m22;
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4724u1 c4724u1) {
        return this.f39470c;
    }

    @Override
    public final DD b() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && DD.class == obj.getClass() && this.f39470c == ((DD) obj).f39470c;
    }

    public final int hashCode() {
        return this.f39470c.hashCode();
    }

    public final String toString() {
        return "Initialized(" + this.f39470c.toString() + ")";
    }

    @Override
    public final AbstractC6450ae0 a(C4798y c4798y) {
        return this.f39470c.b((C4798y<?>) c4798y).d();
    }

    @Override
    public final Object a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC10992r0 abstractC10992r0) {
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, this.f39470c);
        if (!f39469d && c10 == C4724u1.f37808E6) {
            throw new AssertionError();
        }
        char W02 = c10.W0();
        if (W02 == 'D') {
            return 3;
        }
        if (W02 == 'F') {
            return 2;
        }
        if (W02 == 'L') {
            return abstractC10992r0.d(c10);
        }
        if (W02 == 'I') {
            return 1;
        }
        if (W02 == 'J') {
            return 4;
        }
        throw new C5417Jv0("Unexpected value type: " + ((Object) c10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final InterfaceC5225Gm0 a(C4798y c4798y, InterfaceC5225Gm0 interfaceC5225Gm0) {
        if (!equals(interfaceC5225Gm0)) {
            O5 o52 = (O5) interfaceC5225Gm0;
            o52.getClass();
            if (!(o52 instanceof C8353m10)) {
                if (!(o52 instanceof C7028e40) && !interfaceC5225Gm0.isPrimitive() && !interfaceC5225Gm0.t()) {
                    if (!f39469d && !interfaceC5225Gm0.q()) {
                        throw new AssertionError();
                    }
                    AbstractC6450ae0 a10 = this.f39470c.b((C4798y<?>) c4798y).d().a(interfaceC5225Gm0.o().a(c4798y), c4798y);
                    if (!AbstractC7841iy.f49127a) {
                        a10.getClass();
                        if (a10 instanceof C6301Zd0) {
                            throw new AssertionError();
                        }
                    }
                    return new CD(a10);
                }
                return C7028e40.f47586c;
            }
        }
        return this;
    }
}
