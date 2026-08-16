package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.function.Consumer;

public abstract class AbstractC7209f9 {

    public int f47880a = -1;

    public int f47881b = -1;

    public int f47882c = -1;

    public final LinkedHashSet f47883d = new LinkedHashSet();

    public final ArrayList f47884e = new ArrayList();

    public final LinkedHashMap f47885f = new LinkedHashMap();

    public final String toString() {
        final ArrayList arrayList = new ArrayList();
        this.f47883d.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                List.this.add(((AbstractC7209f9) obj).a());
            }
        });
        this.f47884e.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                List.this.add("*" + ((AbstractC7209f9) obj).a());
            }
        });
        return "CfBlock(range=" + a() + ", predecessors=" + C10656zq0.a(", ", (Iterable) arrayList) + ")";
    }

    public final String a() {
        return this.f47880a + "->" + this.f47882c;
    }
}
