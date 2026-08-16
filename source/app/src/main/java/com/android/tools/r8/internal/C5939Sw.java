package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

public class C5939Sw {

    public final ConcurrentHashMap f44340a = new ConcurrentHashMap();

    public final C5765Pw a(com.android.tools.r8.graph.F5 f52) {
        return (C5765Pw) this.f44340a.computeIfAbsent(f52.getReference(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return new C5765Pw((C4554l1) obj);
            }
        });
    }
}
