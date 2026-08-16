package com.android.tools.r8.naming;

import com.android.tools.r8.graph.Uc;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C6899dH;
import com.android.tools.r8.naming.C10957k;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

public final class C11001t {

    public final C6899dH f56068a;

    public C11001t(C6899dH c6899dH) {
        this.f56068a = c6899dH;
    }

    public static C11001t a(List list) {
        C6899dH c6899dH = new C6899dH(16);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C10957k.b bVar = (C10957k.b) it.next();
            M0 m02 = bVar.f55971d;
            if (m02 == null) {
                m02 = bVar.f55969b;
            }
            for (int i10 = m02.f55702a; i10 <= m02.f55703b; i10++) {
                ((List) c6899dH.computeIfAbsent(Integer.valueOf(i10), C5480Ky.a(new Uc()))).add(Integer.valueOf((i10 - m02.f55702a) + bVar.f55969b.f55702a));
            }
        }
        return new C11001t(c6899dH);
    }

    public final void a(int i10, Consumer consumer) {
        List list = (List) this.f56068a.get(i10);
        if (list != null) {
            list.forEach(consumer);
        }
    }
}
