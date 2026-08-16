package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.RandomAccess;

public final class Q3 extends A0 implements InterfaceC10259xT {

    public final transient int f43445h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q3() {
        super(new HashMap(AbstractC9595tV.a(12)));
        int i10 = AbstractC8368m60.f50199a;
        AbstractC5496Le.a(3, "expectedValuesPerKey");
        this.f43445h = 3;
    }

    @Override
    public final List get(Object obj) {
        Object obj2 = (Collection) this.f38497f.get(obj);
        if (obj2 == null) {
            obj2 = new ArrayList(this.f43445h);
        }
        List list = (List) obj2;
        return list instanceof RandomAccess ? new C9851v0(this, obj, list, null) : new C10519z0(this, obj, list, null);
    }
}
