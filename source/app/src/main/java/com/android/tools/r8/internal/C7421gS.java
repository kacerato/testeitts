package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public final class C7421gS extends AbstractC10102wY {

    public final int f48265b;

    public C7421gS(C4798y c4798y) {
        c4798y.E().K().getClass();
        this.f48265b = 100;
    }

    @Override
    public final Collection a(AA aa2) {
        if (!aa2.j()) {
            return Collections.singletonList(aa2);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<E> it = aa2.f38553b.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            int h10 = h22.b0().f36638b.h();
            Iterator it2 = linkedHashMap.entrySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    AA aa3 = new AA();
                    aa3.f38553b.add(h22);
                    linkedHashMap.put(aa3, Integer.valueOf(h10));
                    break;
                }
                Map.Entry entry = (Map.Entry) it2.next();
                AA aa4 = (AA) entry.getKey();
                int intValue = ((Integer) entry.getValue()).intValue() + h10;
                if (intValue <= this.f48265b) {
                    aa4.f38553b.add(h22);
                    entry.setValue(Integer.valueOf(intValue));
                    break;
                }
            }
        }
        return AbstractC9369s60.a(linkedHashMap.o());
    }

    @Override
    public final String f() {
        return "LimitInterfaceGroups";
    }
}
