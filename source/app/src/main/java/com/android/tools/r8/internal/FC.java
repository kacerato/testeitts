package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

public final class FC {

    public final ArrayList f40153a = new ArrayList();

    public final FC a(C5024Db0 c5024Db0) {
        U60.a(!c5024Db0.f39561b.equals(c5024Db0.f39562c), "range must not be empty, but was %s", c5024Db0);
        this.f40153a.add(c5024Db0);
        return this;
    }

    public final FC a(FC fc2) {
        ArrayList arrayList = fc2.f40153a;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            a((C5024Db0) obj);
        }
        return this;
    }

    public final GC a() {
        IK ik2;
        C5024Db0 c5024Db0;
        Object[] objArr = new Object[this.f40153a.size()];
        ArrayList arrayList = this.f40153a;
        C5024Db0 c5024Db02 = C5024Db0.f39560d;
        Collections.sort(arrayList, C4966Cb0.f39269b);
        Iterator it = this.f40153a.iterator();
        if (it instanceof IK) {
            ik2 = (IK) it;
        } else {
            ik2 = new IK(it);
        }
        int i10 = 0;
        while (ik2.hasNext()) {
            C5024Db0 c5024Db03 = (C5024Db0) ik2.next();
            while (ik2.hasNext()) {
                if (!ik2.f41058c) {
                    ik2.f41059d = ik2.f41057b.next();
                    ik2.f41058c = true;
                }
                C5024Db0 c5024Db04 = (C5024Db0) ik2.f41059d;
                if (c5024Db03.f39561b.a(c5024Db04.f39562c) > 0 || c5024Db04.f39561b.a(c5024Db03.f39562c) > 0) {
                    break;
                }
                int a10 = c5024Db03.f39561b.a(c5024Db04.f39561b);
                int a11 = c5024Db03.f39562c.a(c5024Db04.f39562c);
                if (a10 >= 0 && a11 <= 0) {
                    c5024Db0 = c5024Db03;
                } else if (a10 > 0 || a11 < 0) {
                    AbstractC10297xi abstractC10297xi = a10 >= 0 ? c5024Db03.f39561b : c5024Db04.f39561b;
                    AbstractC10297xi abstractC10297xi2 = a11 <= 0 ? c5024Db03.f39562c : c5024Db04.f39562c;
                    if (abstractC10297xi.a(abstractC10297xi2) <= 0) {
                        c5024Db0 = new C5024Db0(abstractC10297xi, abstractC10297xi2);
                    } else {
                        throw new IllegalArgumentException(AbstractC4885Aq0.a("intersection is undefined for disconnected ranges %s and %s", c5024Db03, c5024Db04));
                    }
                } else {
                    c5024Db0 = c5024Db04;
                }
                if (c5024Db0.f39561b.equals(c5024Db0.f39562c)) {
                    C5024Db0 c5024Db05 = (C5024Db0) ik2.next();
                    int a12 = c5024Db03.f39561b.a(c5024Db05.f39561b);
                    int a13 = c5024Db03.f39562c.a(c5024Db05.f39562c);
                    if (a12 > 0 || a13 < 0) {
                        if (a12 < 0 || a13 > 0) {
                            c5024Db05 = new C5024Db0(a12 <= 0 ? c5024Db03.f39561b : c5024Db05.f39561b, a13 >= 0 ? c5024Db03.f39562c : c5024Db05.f39562c);
                        }
                        c5024Db03 = c5024Db05;
                    }
                } else {
                    throw new IllegalArgumentException(AbstractC4885Aq0.a("Overlapping ranges not permitted but found %s overlapping %s", c5024Db03, c5024Db04));
                }
            }
            c5024Db03.getClass();
            int i11 = i10 + 1;
            if (objArr.length < i11) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i11));
            }
            objArr[i10] = c5024Db03;
            i10 = i11;
        }
        AbstractC7552hC b10 = AbstractC7552hC.b(i10, objArr);
        if (b10.isEmpty()) {
            return GC.f40427c;
        }
        if (b10.size() == 1 && ((C5024Db0) AbstractC9907vK.a((Collection) b10)).equals(C5024Db0.f39560d)) {
            return GC.f40428d;
        }
        return new GC(b10);
    }
}
