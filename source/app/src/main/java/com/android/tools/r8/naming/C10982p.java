package com.android.tools.r8.naming;

import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.naming.C10957k;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;

public final class C10982p {

    public static final boolean f56024b = true;

    public final TreeMap f56025a;

    public C10982p(TreeMap treeMap) {
        this.f56025a = treeMap;
    }

    public static C10982p a(List list) {
        TreeMap treeMap = new TreeMap();
        if (!list.isEmpty()) {
            int i10 = AbstractC7552hC.f48487c;
            C7051eC c7051eC = new C7051eC();
            M0 m02 = ((C10957k.b) list.get(0)).f55969b;
            if (m02 == null) {
                if (!f56024b && list.size() != 1) {
                    throw new AssertionError();
                }
                treeMap.put(-1, Collections.singletonList((C10957k.b) list.get(0)));
            } else {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    C10957k.b bVar = (C10957k.b) it.next();
                    if (!m02.equals(bVar.f55969b)) {
                        treeMap.put(Integer.valueOf(m02.f55702a), c7051eC.a());
                        c7051eC = new C7051eC();
                        m02 = bVar.f55969b;
                    }
                    c7051eC.a(bVar);
                }
                treeMap.put(Integer.valueOf(m02.f55702a), c7051eC.a());
            }
        }
        return new C10982p(treeMap);
    }

    public final List a(int i10) {
        Integer num = (Integer) this.f56025a.floorKey(Integer.valueOf(i10));
        if (num == null) {
            return null;
        }
        return (List) this.f56025a.get(num);
    }
}
