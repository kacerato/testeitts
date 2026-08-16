package com.android.tools.r8.internal;

import com.android.tools.r8.graph.InterfaceC4610o0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.function.Predicate;

public final class C10579zM {

    public static final boolean f54360d = true;

    public final List f54361a;

    public final List f54362b;

    public boolean f54363c = false;

    public C10579zM(CM cm2) {
        this.f54361a = Arrays.asList(new com.android.tools.r8.graph.E0[cm2.f39195c.size()]);
        this.f54362b = Arrays.asList(new com.android.tools.r8.graph.G0[cm2.f39196d.size()]);
    }

    public final InterfaceC4610o0 a(int i10) {
        if (i10 >= 0) {
            List list = this.f54361a;
            if (CM.f39192j || i10 >= 0) {
                return (InterfaceC4610o0) list.get(i10);
            }
            throw new AssertionError();
        }
        List list2 = this.f54362b;
        boolean z10 = CM.f39192j;
        if (!z10 && i10 >= 0) {
            throw new AssertionError();
        }
        if (!z10 && i10 >= 0) {
            throw new AssertionError();
        }
        return (InterfaceC4610o0) list2.get(-(i10 + 1));
    }

    public final BM a(CM cm2) {
        List a10;
        List b10;
        BN bn2 = cm2.f39193a;
        int i10 = 0;
        if (cm2.f39198f.isEmpty()) {
            a10 = Collections.EMPTY_LIST;
        } else {
            a10 = a(cm2.f39198f, false, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((InterfaceC4610o0) obj).h();
                }
            });
        }
        ArrayList a11 = a(cm2.f39199g, true, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((InterfaceC4610o0) obj).h();
            }
        });
        if (!this.f54363c) {
            b10 = cm2.f39200h;
        } else {
            int i11 = AbstractC7552hC.f48487c;
            Object[] objArr = new Object[4];
            int i12 = 0;
            while (true) {
                CH ch2 = cm2.f39199g;
                if (i10 >= ch2.f39177c) {
                    break;
                }
                if (a(ch2.c(i10)) != null) {
                    AbstractC10581zN abstractC10581zN = (AbstractC10581zN) cm2.f39200h.get(i10);
                    abstractC10581zN.getClass();
                    int i13 = i12 + 1;
                    if (objArr.length < i13) {
                        objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i13));
                    }
                    objArr[i12] = abstractC10581zN;
                    i12 = i13;
                }
                i10++;
            }
            b10 = AbstractC7552hC.b(i12, objArr);
        }
        return new BM(bn2, a10, a11, b10);
    }

    public final ArrayList a(CH ch2, boolean z10, Predicate predicate) {
        if (!f54360d && ch2.isEmpty()) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList(ch2.f39177c);
        for (int i10 = 0; i10 < ch2.f39177c; i10++) {
            InterfaceC4610o0 a10 = a(ch2.c(i10));
            if (!f54360d && a10 == null && !this.f54363c && !z10) {
                throw new AssertionError();
            }
            if (a10 != null && predicate.test(a10)) {
                arrayList.add(a10);
            }
        }
        return arrayList;
    }
}
