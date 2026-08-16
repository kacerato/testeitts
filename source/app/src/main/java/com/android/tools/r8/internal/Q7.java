package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Iterator;

public final class Q7 implements Iterable {

    public final ArrayList f43453b;

    public P7 f43454c;

    public Q7() {
        this.f43453b = new ArrayList();
        this.f43454c = null;
    }

    public final boolean a() {
        return this.f43453b.size() == 1;
    }

    @Override
    public final Iterator iterator() {
        return this.f43453b.iterator();
    }

    public Q7(com.android.tools.r8.graph.H2 h22, P7 p72) {
        boolean z10 = AT.f38618a;
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(h22);
        this.f43453b = arrayList;
        this.f43454c = p72;
    }
}
