package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

public final class C9973vl0 implements InterfaceC8638nl0 {

    public final C7619hf f53320a;

    public final Comparator f53321b;

    public C9973vl0(C7619hf c7619hf, Comparator comparator) {
        this.f53320a = c7619hf;
        this.f53321b = comparator;
    }

    @Override
    public final Iterator iterator() {
        C7619hf c7619hf = this.f53320a;
        ArrayList arrayList = new ArrayList();
        Iterator it = c7619hf.f48662a.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        Comparator comparator = this.f53321b;
        if (arrayList.size() > 1) {
            Collections.sort(arrayList, comparator);
        }
        return arrayList.iterator();
    }
}
