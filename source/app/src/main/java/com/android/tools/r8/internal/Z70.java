package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.threading.ThreadingModule;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

public final class Z70 {

    public static final boolean f46169b = true;

    public final ConcurrentHashMap f46170a = new ConcurrentHashMap();

    public static com.android.tools.r8.graph.H5 b(Supplier supplier, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) supplier.get();
        if (f46169b || h52.getHolder().e(h52.getReference()) == null) {
            return h52;
        }
        throw new AssertionError();
    }

    public final com.android.tools.r8.graph.H5 a(final Supplier supplier, com.android.tools.r8.graph.A2 a22) {
        return (com.android.tools.r8.graph.H5) ((Map) this.f46170a.computeIfAbsent(a22.s0(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return Z70.a((com.android.tools.r8.graph.M2) obj);
            }
        })).computeIfAbsent(a22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Z70.b(Supplier.this, (com.android.tools.r8.graph.A2) obj);
            }
        });
    }

    public static Map a(com.android.tools.r8.graph.M2 m22) {
        return new ConcurrentHashMap();
    }

    public final void a(ThreadingModule threadingModule, ExecutorService executorService) {
        C5467Kr0.a(this.f46170a, new InterfaceC5988Tr0() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Z70.a((com.android.tools.r8.graph.M2) obj, (Map) obj2);
            }
        }, threadingModule, executorService);
    }

    public static void a(com.android.tools.r8.graph.M2 m22, Map map) {
        com.android.tools.r8.graph.H2 holder = ((com.android.tools.r8.graph.H5) map.values().iterator().next()).getHolder();
        final ArrayList arrayList = new ArrayList();
        map.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                List.this.add(((com.android.tools.r8.graph.H5) obj).d());
            }
        });
        arrayList.sort(Comparator.comparing(new com.android.tools.r8.graph.I9()));
        com.android.tools.r8.graph.N4 b02 = holder.b0();
        b02.getClass();
        if (!com.android.tools.r8.graph.N4.f36636d) {
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                C4516j1 c4516j1 = (C4516j1) obj;
                if (!com.android.tools.r8.graph.N4.f36636d) {
                    b02.c(c4516j1);
                }
            }
        }
        b02.f36639c = C4516j1.f37311v;
        b02.f36638b.a(arrayList);
    }
}
