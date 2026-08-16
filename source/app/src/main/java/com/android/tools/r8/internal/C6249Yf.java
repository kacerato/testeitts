package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Objects;
import java.util.function.Function;

public final class C6249Yf extends AbstractC6192Xf {

    public static final boolean f46053c = true;

    public C6249Yf(InterfaceC6078Vf interfaceC6078Vf) {
        super(interfaceC6078Vf);
    }

    @Override
    public final F1 a(C4798y c4798y, InterfaceC5825Qx interfaceC5825Qx) {
        F1 a10 = this.f45782a.a(c4798y, interfaceC5825Qx);
        a10.getClass();
        if (a10 instanceof A7) {
            return a10;
        }
        if (a10 instanceof C5341Im0) {
            int i10 = 613566756 & ((int) a10.m().f41207c);
            return c4798y.f38427t.a((r8 & (-613566757)) | (i10 >> 1) | (((306783378 & r8) << 1) & i10));
        }
        if (a10 instanceof C5392Jj) {
            C5392Jj H10 = a10.H();
            G1 g12 = c4798y.f38427t;
            C5341Im0 a11 = g12.a(306783378L);
            C5341Im0 a12 = g12.a(613566756L);
            C5341Im0 a13 = g12.a(-920350135L);
            F1 a14 = AbstractC8348m.a(c4798y, H10, a11);
            F1 a15 = AbstractC8348m.a(c4798y, H10, a12);
            return AbstractC8348m.b(c4798y, AbstractC8348m.a(c4798y, H10, a13), AbstractC8348m.b(c4798y, a14, AbstractC8348m.b(c4798y, AbstractC8348m.b(c4798y, a15, 1), AbstractC8348m.a(c4798y, AbstractC8348m.a(c4798y, a14, 1), a15))));
        }
        if (f46053c || !a10.V()) {
            return C10504yv0.f54195b;
        }
        throw new AssertionError();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C6249Yf.class != obj.getClass()) {
            return false;
        }
        return this.f45782a.equals(((C6249Yf) obj).f45782a);
    }

    public final int hashCode() {
        return Objects.hash(C6249Yf.class, this.f45782a);
    }

    public final String toString() {
        return "UpdateChangedFlags(" + ((Object) this.f45782a) + ")";
    }

    @Override
    public final AbstractC6333Zs0 a(Function function) {
        return this.f45782a.a(function);
    }
}
