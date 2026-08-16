package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.InterfaceC4403d1;
import java.util.ArrayList;
import java.util.function.IntFunction;

public abstract class AbstractC9112qc0 extends ZY {

    public static final boolean f51818c = true;

    public final C4554l1[] f51819b;

    public AbstractC9112qc0(C4554l1[] c4554l1Arr) {
        this.f51819b = c4554l1Arr;
    }

    @Override
    public final AbstractC9112qc0 a() {
        return this;
    }

    @Override
    public final boolean c() {
        return true;
    }

    @Override
    public final boolean d() {
        return true;
    }

    @Override
    public final boolean e() {
        return false;
    }

    public static AbstractC9112qc0 a(com.android.tools.r8.graph.L2 l22, C4554l1[] c4554l1Arr) {
        String l23 = l22.toString();
        String[] split = l23.isEmpty() ? new String[0] : l23.split(";");
        if (!f51818c && split.length != c4554l1Arr.length) {
            throw new AssertionError();
        }
        for (int i10 = 0; i10 < split.length; i10++) {
            if (!c4554l1Arr[i10].f38298g.toString().equals(split[i10])) {
                return new C8945pc0(split, c4554l1Arr);
            }
        }
        return new C8611nc0(c4554l1Arr);
    }

    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.M2 m22, InterfaceC4403d1 interfaceC4403d1, IntFunction intFunction) {
        com.android.tools.r8.graph.E0 a10 = interfaceC4403d1.a(m22);
        if (!f51818c && a10 == null) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList(this.f51819b.length);
        int i10 = 0;
        while (true) {
            C4554l1[] c4554l1Arr = this.f51819b;
            if (i10 < c4554l1Arr.length) {
                if (a10.f36251k.f37700b.b(c4554l1Arr[i10]) != null) {
                    arrayList.add((String) intFunction.apply(i10));
                }
                i10++;
            } else {
                return interfaceC4403d1.b().b(C10656zq0.a(";", (Iterable) arrayList));
            }
        }
    }
}
