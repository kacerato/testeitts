package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.internal.InterfaceC5945Sz;
import com.android.tools.r8.internal.VJ;

public final class L implements InterfaceC5945Sz {

    public static final boolean f54771a = true;

    @Override
    public final boolean a(Object obj, Object obj2) {
        VJ vj2 = (VJ) obj;
        VJ vj3 = (VJ) obj2;
        boolean z10 = f54771a;
        if (!z10 && vj2 != null && vj2.d().z()) {
            throw new AssertionError();
        }
        if (!z10 && vj3 != null && vj3.d().z()) {
            throw new AssertionError();
        }
        if (vj2 != vj3) {
            return vj2 != null && vj3 != null && vj2.b(vj3) && vj2.f54321f.equals(vj3.f54321f);
        }
        return true;
    }

    @Override
    public final int a(Object obj) {
        VJ vj2 = (VJ) obj;
        return vj2.f54321f.hashCode() + (vj2.B2().hashCode() * 31);
    }
}
