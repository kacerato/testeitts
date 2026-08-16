package com.android.tools.r8.internal;

import java.util.Iterator;

public final class V5 extends AbstractC7500gv {

    public static final boolean f44952a = true;

    @Override
    public final boolean a(Object obj, Object obj2) {
        C7201f60 c7201f60 = (C7201f60) obj;
        C7201f60 c7201f602 = (C7201f60) obj2;
        if (!f44952a && c7201f60.f47862p != c7201f602.f47862p) {
            throw new AssertionError();
        }
        for (int i10 = 0; i10 < c7201f60.c0().size(); i10++) {
            if (((C10340xw0) c7201f60.f47863q.get(i10)) != ((C10340xw0) c7201f602.f47863q.get(i10))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final int a(Object obj) {
        Iterator<C10340xw0> it = ((C7201f60) obj).c0().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 = (i10 * 13) + it.next().f53885b;
        }
        return i10;
    }
}
