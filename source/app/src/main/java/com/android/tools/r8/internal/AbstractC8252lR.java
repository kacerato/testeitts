package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.Iterator;

public abstract class AbstractC8252lR {

    public static final boolean f49974a = true;

    public static void a(C4798y c4798y, Collection collection) {
        if (!f49974a && !c4798y.E().f50616L0.b() && !collection.isEmpty()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 a22 = c4798y.b().f38184w6;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            C4516j1 b10 = h22.b(a22);
            if (b10 != null && b10.getAccessFlags().h()) {
                h22.d(a22);
            }
        }
    }
}
