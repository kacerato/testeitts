package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C7529h40 extends AbstractC10102wY {

    public static final boolean f48432e = true;

    public final C4798y f48433b;

    public final C4387c4 f48434c;

    public final IdentityHashMap f48435d = new IdentityHashMap();

    public C7529h40(C4798y c4798y, C4387c4 c4387c4) {
        this.f48433b = c4798y;
        this.f48434c = c4387c4;
    }

    @Override
    public final Collection a(AA aa2) {
        int i10;
        C7362g40 c7362g40;
        if (!aa2.j()) {
            int i11 = AbstractC7552hC.f48487c;
            return new C5920Sm0(aa2);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<E> it = aa2.f38553b.iterator();
        while (true) {
            i10 = 0;
            if (!it.hasNext()) {
                break;
            }
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            Set b10 = b(h22);
            Set a10 = a(h22);
            int size = arrayList.size();
            while (true) {
                if (i10 >= size) {
                    c7362g40 = null;
                    break;
                }
                Object obj = arrayList.get(i10);
                i10++;
                c7362g40 = (C7362g40) obj;
                c7362g40.getClass();
                Iterator it2 = a10.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) it2.next();
                        if (c7362g40.f48179a.f38553b.contains(h23) || !c7362g40.f48181c.contains(h23)) {
                        }
                    } else {
                        Iterator it3 = b10.iterator();
                        while (true) {
                            if (it3.hasNext()) {
                                com.android.tools.r8.graph.H2 h24 = (com.android.tools.r8.graph.H2) it3.next();
                                if (c7362g40.f48179a.f38553b.contains(h24) || !c7362g40.f48182d.contains(h24)) {
                                }
                            } else {
                                Iterator it4 = c7362g40.f48182d.iterator();
                                while (true) {
                                    if (it4.hasNext()) {
                                        com.android.tools.r8.graph.H2 h25 = (com.android.tools.r8.graph.H2) it4.next();
                                        if (h25 == h22 || !b10.contains(h25)) {
                                        }
                                    } else {
                                        for (com.android.tools.r8.graph.H2 h26 : c7362g40.f48181c) {
                                            if (h26 == h22 || !a10.contains(h26)) {
                                            }
                                        }
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (c7362g40 != null) {
                c7362g40.a(b10, h22, a10);
            } else {
                c7362g40 = new C7362g40(b10, h22, a10);
                arrayList.add(c7362g40);
            }
            this.f48435d.put(h22, c7362g40.f48179a);
        }
        LinkedList linkedList = new LinkedList();
        int size2 = arrayList.size();
        while (i10 < size2) {
            Object obj2 = arrayList.get(i10);
            i10++;
            AA aa3 = ((C7362g40) obj2).f48179a;
            if (aa3.k()) {
                if (!f48432e && aa3.f38553b.isEmpty()) {
                    throw new AssertionError();
                }
                this.f48435d.remove(aa3.f38553b.getFirst());
            } else {
                linkedList.add(aa3);
            }
        }
        return linkedList;
    }

    public final Set b(com.android.tools.r8.graph.H2 h22) {
        return a(h22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7529h40.this.c((com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    public final Iterable c(com.android.tools.r8.graph.H2 h22) {
        C4387c4 c4387c4 = this.f48434c;
        C4798y c4798y = this.f48433b;
        c4387c4.getClass();
        return C4387c4.a(c4798y, h22);
    }

    @Override
    public final void e() {
        this.f48435d.clear();
    }

    @Override
    public final String f() {
        return "OnlyDirectlyConnectedOrUnrelatedInterfaces";
    }

    @Override
    public final boolean l() {
        return !this.f48433b.E().K().f50762c;
    }

    public final Set a(com.android.tools.r8.graph.H2 h22) {
        final C4387c4 c4387c4 = this.f48434c;
        Objects.requireNonNull(c4387c4);
        return a(h22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4387c4.this.b((com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    public final Set a(com.android.tools.r8.graph.H2 h22, final Function function) {
        final C6286Yx0 c6286Yx0 = new C6286Yx0(new LinkedHashSet());
        c6286Yx0.c(h22);
        c6286Yx0.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7529h40.this.a(c6286Yx0, function, (com.android.tools.r8.graph.H2) obj);
            }
        });
        if (!f48432e && c6286Yx0.f46126b.contains(h22)) {
            throw new AssertionError();
        }
        return c6286Yx0.f46126b;
    }

    public final void a(C6286Yx0 c6286Yx0, Function function, com.android.tools.r8.graph.H2 h22) {
        AA aa2 = (AA) this.f48435d.get(h22);
        if (aa2 != null) {
            c6286Yx0.b((Iterable) aa2);
        }
        c6286Yx0.b((Iterable) function.apply(h22));
    }
}
