package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.ExecutorService;

public final class RZ extends AbstractC10269xY {

    public static final boolean f43928e = true;

    public final C4798y f43929b;

    public final IdentityHashMap f43930c = new IdentityHashMap();

    public C8975pm0 f43931d;

    public RZ(C4798y c4798y) {
        this.f43929b = c4798y;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00aa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x002b A[SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Collection a(AA aa2, Object obj) {
        AA aa3;
        AbstractC7552hC<AA> a10 = a(aa2);
        LinkedList<AA> linkedList = new LinkedList();
        for (AA aa4 : a10) {
            LinkedList linkedList2 = new LinkedList();
            QZ qz = new QZ(this, aa4);
            Iterator<E> it = aa4.f38553b.iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
                if (!f43928e && qz.a(h22)) {
                    throw new AssertionError();
                }
                if (h22.c1()) {
                    int i10 = AbstractC7552hC.f48487c;
                    qz.a(new C5920Sm0(h22));
                    qz.b(h22.h(h22.L0()));
                    qz.c();
                    if (qz.a(h22)) {
                        aa3 = null;
                        if (aa3 == null) {
                            aa3.f38553b.add(h22);
                        }
                    }
                }
                Iterator<E> it2 = linkedList2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        AA aa5 = (AA) it2.next();
                        Iterator<E> it3 = aa5.f38553b.iterator();
                        while (it3.hasNext()) {
                            com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) it3.next();
                            if (!qz.a(h23, h22) && !qz.a(h22, h23)) {
                            }
                        }
                        aa3 = aa5;
                        break;
                    }
                    aa3 = new AA();
                    linkedList2.add(aa3);
                    break;
                }
                if (aa3 == null) {
                }
            }
            linkedList.addAll(linkedList2);
        }
        AbstractC9369s60.a(linkedList);
        for (AA aa6 : linkedList) {
            Iterator<E> it4 = aa6.f38553b.iterator();
            while (it4.hasNext()) {
                this.f43930c.put((com.android.tools.r8.graph.H2) it4.next(), aa6);
            }
        }
        Iterator<E> it5 = aa2.f38553b.iterator();
        while (it5.hasNext()) {
            com.android.tools.r8.graph.H2 h24 = (com.android.tools.r8.graph.H2) it5.next();
            if (((AA) this.f43930c.get(h24)) == aa2) {
                this.f43930c.remove(h24);
            }
        }
        return linkedList;
    }

    @Override
    public final void e() {
        this.f43930c.clear();
    }

    @Override
    public final String f() {
        return "NoClassInitializerCycles";
    }

    @Override
    public final boolean l() {
        return !this.f43929b.E().K().f50761b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AbstractC7552hC a(AA aa2) {
        com.android.tools.r8.graph.H2 h22;
        final Set<com.android.tools.r8.graph.H2> c10 = AbstractC5513Ll0.c();
        ((C11245i) this.f43929b.f()).a((com.android.tools.r8.graph.E0) aa2.f38553b.iterator().next(), new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return RZ.a(Set.this, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.E0) obj2, (com.android.tools.r8.graph.E0) obj3);
            }
        });
        QZ qz = new QZ(this, aa2);
        qz.a(aa2);
        for (com.android.tools.r8.graph.H2 h23 : c10) {
            if (h23.c1()) {
                qz.b(h23.h(h23.L0()));
            }
        }
        qz.c();
        AA aa3 = new AA();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<E> it = aa2.f38553b.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h24 = (com.android.tools.r8.graph.H2) it.next();
            if (qz.a(h24)) {
                AbstractC8374m80 c11 = AbstractC8374m80.c();
                com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f43931d.f51608b.get(h24);
                while (h52 != null && c11.add((AbstractC8374m80) h52)) {
                    if (h52.d().f1() && c10.contains(h52.getHolder())) {
                        h22 = h52.getHolder();
                        break;
                    }
                    h52 = (com.android.tools.r8.graph.H5) this.f43931d.f51607a.f43368b.get(new C7333fv(C7374g80.f48192a, h52));
                }
                h22 = null;
                if (h22 != null) {
                    ((AA) linkedHashMap.computeIfAbsent(h22, TU.a(new C9596tV0()))).f38553b.add(h24);
                }
            } else {
                aa3.f38553b.add(h24);
            }
        }
        int i10 = AbstractC7552hC.f48487c;
        return new C7051eC().a((Object) aa3).b((Iterable) linkedHashMap.values()).a();
    }

    public static AbstractC6333Zs0 a(Set set, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.E0 e03) {
        if (e02 != null && e02.e0()) {
            set.add(e02.d0());
            return C6276Ys0.f46097c;
        }
        return C6162Ws0.f45559c;
    }

    @Override
    public final Object a(LinkedList linkedList, ExecutorService executorService) {
        Iterator<E> it = linkedList.iterator();
        while (it.hasNext()) {
            AA aa2 = (AA) it.next();
            Iterator<E> it2 = aa2.f38553b.iterator();
            while (it2.hasNext()) {
                this.f43930c.put((com.android.tools.r8.graph.H2) it2.next(), aa2);
            }
        }
        this.f43931d = new C8808om0(this.f43929b).a(executorService).a();
        return null;
    }
}
