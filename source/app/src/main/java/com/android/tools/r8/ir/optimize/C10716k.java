package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.InterfaceC7495gt0;
import com.android.tools.r8.internal.InterfaceC7662ht0;
import com.android.tools.r8.ir.optimize.C10716k;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C10716k {

    public static final boolean f54887b = true;

    public final LinkedHashMap f54888a;

    public C10716k(LinkedHashMap linkedHashMap) {
        this.f54888a = linkedHashMap;
    }

    public final void a(InterfaceC7495gt0 interfaceC7495gt0) {
        Iterator it = this.f54888a.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            AbstractC10561zE abstractC10561zE = (AbstractC10561zE) entry.getKey();
            Map map = (Map) entry.getValue();
            Iterator it2 = map.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry2 = (Map.Entry) it2.next();
                final C10340xw0 c10340xw0 = (C10340xw0) entry2.getKey();
                C10712i c10712i = (C10712i) entry2.getValue();
                AbstractC10710h abstractC10710h = c10712i.f54879a;
                abstractC10710h.getClass();
                if (abstractC10710h instanceof C10718l) {
                    if (!f54887b && !c10340xw0.d(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return C10716k.a(C10340xw0.this, (AbstractC10561zE) obj);
                        }
                    })) {
                        throw new AssertionError();
                    }
                } else {
                    if (!f54887b && !(abstractC10710h instanceof C10725p)) {
                        throw new AssertionError();
                    }
                    AbstractC10710h abstractC10710h2 = (AbstractC10710h) interfaceC7495gt0.a(abstractC10561zE, c10340xw0, c10712i);
                    abstractC10710h2.getClass();
                    if (((abstractC10710h2 instanceof C10722n) && !c10340xw0.H()) || (abstractC10710h2 instanceof C10725p)) {
                        it2.remove();
                    } else {
                        c10712i.f54879a = abstractC10710h2;
                    }
                }
            }
            if (map.isEmpty()) {
                it.remove();
            }
        }
    }

    public static boolean a(C10340xw0 c10340xw0, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.d() == c10340xw0;
    }

    public final void a(IdentityHashMap identityHashMap) {
        identityHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10716k.this.a((AbstractC10561zE) obj, (Map) obj2);
            }
        });
    }

    public final void a(AbstractC10561zE abstractC10561zE, Map map) {
        final Map map2 = (Map) this.f54888a.get(abstractC10561zE);
        if (map2 != null) {
            map.o().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Map.this.remove((C10340xw0) obj);
                }
            });
            if (map2.isEmpty()) {
                this.f54888a.remove(abstractC10561zE);
            }
        }
    }

    public final void a(InterfaceC7662ht0 interfaceC7662ht0) {
        Iterator it = this.f54888a.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            AbstractC10561zE abstractC10561zE = (AbstractC10561zE) entry.getKey();
            Map map = (Map) entry.getValue();
            Iterator it2 = map.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry2 = (Map.Entry) it2.next();
                if (interfaceC7662ht0.a(abstractC10561zE, (C10340xw0) entry2.getKey(), (C10712i) entry2.getValue())) {
                    it2.remove();
                }
            }
            if (map.isEmpty()) {
                it.remove();
            }
        }
    }
}
