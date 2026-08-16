package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Consumer;

public final class C5314Ib0 {

    public final C4724u1 f41148a;

    public C5314Ib0(C4724u1 c4724u1) {
        this.f41148a = c4724u1;
    }

    public static ArrayList a(C9773ua0 c9773ua0) {
        final ArrayList arrayList = new ArrayList();
        LinkedList linkedList = c9773ua0.f52883e;
        if ((linkedList != null ? linkedList.size() : 0) > 0) {
            Iterator<E> it = c9773ua0.f52883e.iterator();
            while (it.hasNext()) {
                ((C5137Fa0) it.next()).a(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        List.this.add((AbstractC8772oa0) obj);
                    }
                });
            }
        }
        LinkedList linkedList2 = c9773ua0.f52882d;
        if ((linkedList2 != null ? linkedList2.size() : 0) > 0) {
            arrayList.addAll(c9773ua0.f52882d);
        }
        if (c9773ua0.a()) {
            Iterator<E> it2 = c9773ua0.f52881c.iterator();
            while (it2.hasNext()) {
                arrayList.addAll(((C8605na0) it2.next()).f50988d);
            }
        }
        return arrayList;
    }
}
