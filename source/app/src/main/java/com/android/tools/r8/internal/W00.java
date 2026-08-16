package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;
import java.util.function.BiConsumer;
import java.util.function.Predicate;
import org.apache.commons.math3.geometry.VectorFormat;

public final class W00 extends UD {

    public static final boolean f45256b = true;

    public final TreeMap f45257a;

    public W00(TreeMap treeMap) {
        boolean z10 = f45256b;
        if (!z10 && treeMap.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !treeMap.values().stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((SD) obj).isUnknown();
            }
        })) {
            throw new AssertionError();
        }
        this.f45257a = treeMap;
    }

    @Override
    public final boolean a() {
        return false;
    }

    @Override
    public final void b(InterfaceC4403d1 interfaceC4403d1, BiConsumer biConsumer) {
        a(interfaceC4403d1, biConsumer);
    }

    public final String toString() {
        final ArrayList arrayList = new ArrayList();
        this.f45257a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                List.this.add(((C4554l1) obj).j0() + " -> " + ((Object) ((SD) obj2)));
            }
        });
        return "NonTrivialInstanceFieldInitializationInfoCollection(" + C10656zq0.a(VectorFormat.DEFAULT_SEPARATOR, (Iterable) arrayList) + ")";
    }

    @Override
    public final UD a(final com.android.tools.r8.graph.proto.c cVar) {
        final TD td2 = new TD();
        this.f45257a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                TD.this.a((C4554l1) obj, ((SD) obj2).a(cVar));
            }
        });
        if (td2.f44420a.isEmpty()) {
            return C5817Qt.f43747a;
        }
        return new W00(td2.f44420a);
    }

    @Override
    public final UD a(final C4798y c4798y, final AbstractC5308Hz abstractC5308Hz, final AbstractC5308Hz abstractC5308Hz2) {
        final TD td2 = new TD();
        this.f45257a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                TD.this.a(r1.e(r2, r4), ((SD) obj2).b(c4798y, ((C4554l1) obj).getType(), abstractC5308Hz, abstractC5308Hz2));
            }
        });
        if (td2.f44420a.isEmpty()) {
            return C5817Qt.f43747a;
        }
        return new W00(td2.f44420a);
    }

    @Override
    public final void a(final InterfaceC4403d1 interfaceC4403d1, final BiConsumer biConsumer) {
        this.f45257a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                W00.a(InterfaceC4403d1.this, biConsumer, (C4554l1) obj, (SD) obj2);
            }
        });
    }

    public static void a(InterfaceC4403d1 interfaceC4403d1, BiConsumer biConsumer, C4554l1 c4554l1, SD sd2) {
        com.android.tools.r8.graph.F0 a10 = interfaceC4403d1.a(c4554l1);
        if (a10 != null) {
            biConsumer.accept(a10, sd2);
        } else if (!f45256b) {
            throw new AssertionError();
        }
    }

    @Override
    public final SD a(C4460g1 c4460g1) {
        return (SD) this.f45257a.getOrDefault(c4460g1.getReference(), C9335rv0.f52224a);
    }
}
