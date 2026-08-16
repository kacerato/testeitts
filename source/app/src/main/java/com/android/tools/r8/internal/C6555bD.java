package com.android.tools.r8.internal;

import com.android.tools.r8.internal.B60;
import java.util.Comparator;
import java.util.HashMap;

public final class C6555bD implements Comparator {

    public static final boolean f46728d = true;

    public final HashMap f46729b;

    public final HashMap f46730c;

    public C6555bD(HashMap hashMap, HashMap hashMap2) {
        this.f46729b = hashMap;
        this.f46730c = hashMap2;
    }

    public final B60.b a(InterfaceC6078Vf interfaceC6078Vf) {
        B60.b bVar = (B60.b) this.f46729b.get(interfaceC6078Vf);
        if (f46728d || bVar != null) {
            return bVar;
        }
        throw new AssertionError((Object) ("Unexpected attempt to lookup position of " + interfaceC6078Vf.getClass().getName()));
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        return ((ZC) obj).b((ZC) obj2, this);
    }
}
