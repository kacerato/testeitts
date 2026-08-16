package com.android.tools.r8.graph;

import com.android.tools.r8.graph.H3;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

public final class N3 {

    public final HashMap f36635a;

    public N3(HashMap hashMap) {
        this.f36635a = hashMap;
    }

    public static N3 a(List list) {
        final HashMap hashMap = new HashMap();
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N3.a(Map.this, (H3.f) obj);
            }
        });
        return new N3(hashMap);
    }

    public static void a(Map map, H3.f fVar) {
        H3.e eVar = fVar.f36391b;
        if (eVar != null && eVar.b() && fVar.f36391b.m()) {
            map.put(fVar.f36390a, fVar.f36391b);
        } else if (!fVar.f36392c.isEmpty() && fVar.f36392c.get(0).m()) {
            map.put(fVar.f36390a, fVar.f36392c.get(0));
        } else {
            map.put(fVar.f36390a, null);
        }
    }
}
