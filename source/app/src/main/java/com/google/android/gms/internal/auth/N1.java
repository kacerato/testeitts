package com.google.android.gms.internal.auth;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class N1 extends R1 {

    public static final Class f61643c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public N1(M1 m12) {
        super(null);
    }

    @Override
    public final void a(Object obj, long j10) {
        Object unmodifiableList;
        List list = (List) Q2.f(obj, j10);
        if (list instanceof L1) {
            unmodifiableList = ((L1) list).R1();
        } else {
            if (f61643c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof InterfaceC11957l2) && (list instanceof F1)) {
                F1 f12 = (F1) list;
                if (f12.P1()) {
                    f12.O1();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        Q2.p(obj, j10, unmodifiableList);
    }

    @Override
    public final void b(Object obj, Object obj2, long j10) {
        List list;
        List list2 = (List) Q2.f(obj2, j10);
        int size = list2.size();
        List list3 = (List) Q2.f(obj, j10);
        if (list3.isEmpty()) {
            list3 = list3 instanceof L1 ? new K1(size) : ((list3 instanceof InterfaceC11957l2) && (list3 instanceof F1)) ? ((F1) list3).L0(size) : new ArrayList(size);
            Q2.p(obj, j10, list3);
        } else {
            if (f61643c.isAssignableFrom(list3.getClass())) {
                ArrayList arrayList = new ArrayList(list3.size() + size);
                arrayList.addAll(list3);
                Q2.p(obj, j10, arrayList);
                list = arrayList;
            } else if (list3 instanceof L2) {
                K1 k12 = new K1(list3.size() + size);
                k12.addAll(k12.size(), (L2) list3);
                Q2.p(obj, j10, k12);
                list = k12;
            } else if ((list3 instanceof InterfaceC11957l2) && (list3 instanceof F1)) {
                F1 f12 = (F1) list3;
                if (!f12.P1()) {
                    list3 = f12.L0(list3.size() + size);
                    Q2.p(obj, j10, list3);
                }
            }
            list3 = list;
        }
        int size2 = list3.size();
        int size3 = list2.size();
        if (size2 > 0 && size3 > 0) {
            list3.addAll(list2);
        }
        if (size2 > 0) {
            list2 = list3;
        }
        Q2.p(obj, j10, list2);
    }

    public N1() {
        super(null);
    }
}
