package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;

public final class CD extends BD {

    public static final boolean f39160e = true;

    public final AbstractC6450ae0 f39161c;

    public com.android.tools.r8.graph.M2 f39162d;

    public CD(AbstractC6450ae0 abstractC6450ae0) {
        boolean z10 = f39160e;
        if (!z10 && abstractC6450ae0 == null) {
            throw new AssertionError();
        }
        if (!z10) {
            abstractC6450ae0.getClass();
            if (abstractC6450ae0 instanceof C6301Zd0) {
                throw new AssertionError();
            }
        }
        this.f39161c = abstractC6450ae0;
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4724u1 c4724u1) {
        if (this.f39162d == null) {
            this.f39162d = this.f39161c.a(c4724u1);
        }
        return this.f39162d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || CD.class != obj.getClass()) {
            return false;
        }
        return this.f39161c.equals(((CD) obj).f39161c);
    }

    public final int hashCode() {
        return this.f39161c.hashCode();
    }

    @Override
    public final CD p() {
        return this;
    }

    public final String toString() {
        return "Initialized(" + this.f39161c.toString() + ")";
    }

    @Override
    public final AbstractC6450ae0 a(C4798y c4798y) {
        return this.f39161c;
    }

    @Override
    public final Object a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC10992r0 abstractC10992r0) {
        throw new C5417Jv0("Unexpected InitializedNonNullReferenceFrameTypeWithInterfaces in writer");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final InterfaceC5225Gm0 a(C4798y c4798y, InterfaceC5225Gm0 interfaceC5225Gm0) {
        if (!equals(interfaceC5225Gm0)) {
            O5 o52 = (O5) interfaceC5225Gm0;
            o52.getClass();
            if (!(o52 instanceof C8353m10)) {
                if (!(o52 instanceof C7028e40) && !interfaceC5225Gm0.isPrimitive() && !interfaceC5225Gm0.t()) {
                    if (!f39160e && !interfaceC5225Gm0.q()) {
                        throw new AssertionError();
                    }
                    AbstractC6450ae0 a10 = this.f39161c.a(interfaceC5225Gm0.o().a(c4798y), c4798y);
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
