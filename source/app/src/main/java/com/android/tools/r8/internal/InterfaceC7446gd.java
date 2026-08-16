package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Function;

public interface InterfaceC7446gd {
    static void a(C4798y c4798y, com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H2 h23, BiConsumer biConsumer) {
        LinkedHashMap a10 = a(h23);
        ArrayList arrayList = new ArrayList();
        for (C4460g1 c4460g1 : h22.k1()) {
            C6089Vk0 c6089Vk0 = new C6089Vk0(c4460g1.getAccessFlags(), c4460g1.getType());
            LinkedList linkedList = (LinkedList) a10.get(c6089Vk0);
            if (linkedList != null && !linkedList.isEmpty()) {
                biConsumer.accept(c4460g1, (C4460g1) linkedList.removeFirst());
                if (linkedList.isEmpty()) {
                    a10.remove(c6089Vk0);
                }
            } else {
                arrayList.add(c4460g1);
            }
        }
        LinkedHashMap a11 = a(c4798y, a10);
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C4460g1 c4460g12 = (C4460g1) obj;
            boolean z10 = AbstractC7112ed.f47727a;
            if (!z10 && !c4460g12.getType().Q0()) {
                throw new AssertionError();
            }
            C4460g1 c4460g13 = (C4460g1) ((LinkedList) a11.get(new C6089Vk0(c4460g12.getAccessFlags(), c4460g12.getType().Q0() ? c4798y.b().f38068i2 : c4460g12.getType()))).removeFirst();
            if (!z10 && c4460g13 == null) {
                throw new AssertionError();
            }
            if (!z10 && !c4460g13.getType().Q0()) {
                throw new AssertionError();
            }
            biConsumer.accept(c4460g12, c4460g13);
        }
    }

    static LinkedList b(C6089Vk0 c6089Vk0) {
        return new LinkedList();
    }

    void a(C4460g1 c4460g1);

    C4460g1[] a();

    /* JADX WARN: Multi-variable type inference failed */
    static LinkedHashMap a(com.android.tools.r8.graph.H2 h22) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (C4460g1 c4460g1 : h22.k1()) {
            ((LinkedList) linkedHashMap.computeIfAbsent(new C6089Vk0(c4460g1.getAccessFlags(), c4460g1.getType()), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return InterfaceC7446gd.a((C6089Vk0) obj);
                }
            })).add(c4460g1);
        }
        return linkedHashMap;
    }

    static LinkedList a(C6089Vk0 c6089Vk0) {
        return new LinkedList();
    }

    static LinkedHashMap a(final C4798y c4798y, LinkedHashMap linkedHashMap) {
        final LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                InterfaceC7446gd.a(Map.this, c4798y, (C6089Vk0) obj, (LinkedList) obj2);
            }
        });
        return linkedHashMap2;
    }

    static void a(Map map, C4798y c4798y, C6089Vk0 c6089Vk0, LinkedList linkedList) {
        ((LinkedList) map.computeIfAbsent(new C6089Vk0(c6089Vk0.f45152a, c6089Vk0.f45153b.Q0() ? c4798y.b().f38068i2 : c6089Vk0.f45153b), new Function() {
            @Override
            public final Object apply(Object obj) {
                return InterfaceC7446gd.b((C6089Vk0) obj);
            }
        })).addAll(linkedList);
    }
}
