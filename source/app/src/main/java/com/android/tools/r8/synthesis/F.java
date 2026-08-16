package com.android.tools.r8.synthesis;

import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.KC;
import com.android.tools.r8.internal.PC;
import com.android.tools.r8.internal.R00;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

public final class F {

    public static final boolean f58054b = true;

    public final ConcurrentHashMap f58055a = new ConcurrentHashMap();

    public final void a(R00 r00) {
        ConcurrentHashMap.KeySetView keySet;
        ConcurrentHashMap.KeySetView keySet2;
        if (f58054b) {
            return;
        }
        keySet = this.f58055a.o();
        keySet2 = this.f58055a.o();
        r00.getClass();
        PC pc2 = KC.f41616c;
        Iterator<K> it = keySet2.iterator();
        while (it.hasNext()) {
            M2 c10 = r00.c(AbstractC5308Hz.g(), (M2) it.next());
            Objects.requireNonNull(pc2);
            c10.getClass();
            pc2 = pc2.a(c10);
        }
        Objects.requireNonNull(pc2);
        if (!keySet.equals(pc2.c().a())) {
            throw new AssertionError();
        }
    }
}
