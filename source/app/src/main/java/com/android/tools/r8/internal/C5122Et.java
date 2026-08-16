package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class C5122Et {

    public static final boolean f40037f = true;

    public final C4798y f40038a;

    public final ConcurrentHashMap f40039b = new ConcurrentHashMap();

    public final ConcurrentHashMap f40040c = new ConcurrentHashMap();

    public final ConcurrentHashMap f40041d = new ConcurrentHashMap();

    public final C7873j80 f40042e;

    public C5122Et(C4798y c4798y) {
        C8040k80 c8040k80 = AbstractC8374m80.f50207d;
        this.f40042e = new C7873j80();
        this.f40038a = c4798y;
    }

    public final InterfaceC6078Vf a(C6431aX c6431aX) {
        if (this.f40041d.containsKey(c6431aX)) {
            if (!f40037f && !this.f40038a.E().c().f50744b) {
                throw new AssertionError();
            }
            return (InterfaceC6078Vf) this.f40041d.get(c6431aX);
        }
        ConcurrentHashMap concurrentHashMap = this.f40039b;
        int i10 = F1.f40064a;
        return (InterfaceC6078Vf) concurrentHashMap.getOrDefault(c6431aX, C10504yv0.f54195b);
    }

    public final void a(Set set) {
        final HashMap hashMap = new HashMap();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((AbstractC8374m80) Map.this.computeIfAbsent(r2.x(), TU.a(new C6880dA0()))).add((AbstractC8374m80) ((com.android.tools.r8.graph.H5) obj));
                }
            };
            h22.getClass();
            h22.j(consumer, EnumC6871d70.f47286b);
        }
        hashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C5122Et.this.a((com.android.tools.r8.graph.F2) obj, (AbstractC8374m80) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.F2 f22, AbstractC8374m80 abstractC8374m80) {
        if (abstractC8374m80.f45165b.size() == 1) {
            com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) ((com.android.tools.r8.graph.H0) abstractC8374m80.f45165b.values().iterator().next());
            if (AbstractC9199r50.a(this.f40038a, h52)) {
                this.f40042e.add((C7873j80) h52);
            }
        }
    }

    public final void a(com.android.tools.r8.graph.O5 o52) {
        C5180Ft a10 = C5180Ft.a(this.f40038a, this.f40039b, this.f40040c, o52);
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        for (C5238Gt c5238Gt : a10.f40333b.values()) {
            if (c5238Gt.f40605e) {
                c6286Yx0.b((C6286Yx0) c5238Gt);
            }
        }
        while (c6286Yx0.b()) {
            C5238Gt c5238Gt2 = (C5238Gt) c6286Yx0.c();
            c6286Yx0.b((Iterable) c5238Gt2.f40603c);
            c5238Gt2.a();
            a10.b(c5238Gt2);
        }
        Collection values = a10.f40333b.values();
        final C6286Yx0 c6286Yx02 = new C6286Yx0(2);
        c6286Yx02.b((Iterable) values);
        while (c6286Yx02.b()) {
            while (c6286Yx02.b()) {
                Object c10 = c6286Yx02.c();
                c6286Yx02.f46126b.remove(c10);
                C5238Gt c5238Gt3 = (C5238Gt) c10;
                if (!f40037f) {
                    if (!a10.f40333b.containsKey(new C6431aX(c5238Gt3.f40601a, c5238Gt3.f40602b))) {
                        throw new AssertionError();
                    }
                }
                c5238Gt3.b();
                if (c5238Gt3.f40604d.isEmpty()) {
                    c5238Gt3.c();
                    c5238Gt3.f40603c.forEach(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            C6286Yx0.this.b((C6286Yx0) obj);
                        }
                    });
                    c5238Gt3.a();
                    a10.b(c5238Gt3);
                }
            }
            a10.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C6286Yx0.this.b((C6286Yx0) obj);
                }
            });
        }
    }
}
