package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C4907Bb;
import com.android.tools.r8.internal.G9;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;

public abstract class AbstractC5472Ku extends AbstractC8489mr0 {

    public static final boolean f41803c = true;

    public AbstractC5472Ku(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        super(c4798y, m22);
    }

    public final void a(List list, F1 f12, com.android.tools.r8.graph.M2 m22) {
        f12.getClass();
        if (f12 instanceof C5283Hm0) {
            if (!f41803c && !m22.Q0()) {
                throw new AssertionError();
            }
            list.add(new C10212x9());
            return;
        }
        if (f12.g0()) {
            if (!f41803c && m22 != this.f50436a.b().f38052g2) {
                throw new AssertionError();
            }
            list.add(new A9(f12.P().j0()));
            return;
        }
        if (f12 instanceof C5341Im0) {
            if (!f41803c && !m22.P0()) {
                throw new AssertionError();
            }
            list.add(new C10546z9(f12.m().f41207c, EnumC5477Kw0.a(m22)));
            return;
        }
        throw new C5417Jv0("Unsupported value: " + ((Object) f12));
    }

    public final void a(ArrayList arrayList, BiConsumer biConsumer, InterfaceC10068wH interfaceC10068wH, Object obj, G9.a aVar, boolean z10) {
        boolean z11 = f41803c;
        if (!z11 && obj != null && z10) {
            throw new AssertionError();
        }
        boolean z12 = obj != null || z10;
        if (!z11) {
            if (C8704o7.a(z12) + interfaceC10068wH.size() < 2) {
                throw new AssertionError();
            }
        }
        int size = interfaceC10068wH.size() - C8704o7.a(!z12);
        int[] iArr = new int[size];
        ArrayList arrayList2 = new ArrayList(size);
        HH it = interfaceC10068wH.o().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            if (i10 < size) {
                iArr[i10] = intValue;
                arrayList2.add(new C8103ka());
                i10++;
            }
        }
        C8103ka c8103ka = new C8103ka();
        Object obj2 = z12 ? obj : interfaceC10068wH.get(interfaceC10068wH.d());
        boolean z13 = f41803c;
        if (!z13) {
            boolean z14 = X3.f45604a;
            for (int i11 = 0; i11 < size - 1; i11++) {
                if (!X3.f45604a && iArr[i11] >= iArr[i11 + 1]) {
                    throw new AssertionError();
                }
            }
        }
        if (!z13 && size != arrayList2.size()) {
            throw new AssertionError();
        }
        arrayList.add(new C8938pa(EnumC5477Kw0.a(this.f50436a.b().f37884J1), 0));
        arrayList.add(new C4907Bb(C4907Bb.a.f38947b, c8103ka, iArr, arrayList2));
        for (int i12 = 0; i12 < size; i12++) {
            arrayList.add((W9) arrayList2.get(i12));
            arrayList.add(aVar.a());
            biConsumer.accept(arrayList, interfaceC10068wH.get(iArr[i12]));
            if (!f41803c && !((W9) J6.a(arrayList, 1)).S()) {
                throw new AssertionError();
            }
        }
        arrayList.add(c8103ka);
        arrayList.add(aVar.a());
        if (z10) {
            arrayList.add(new C10212x9());
            arrayList.add(new C4965Cb());
        } else {
            biConsumer.accept(arrayList, obj2);
            if (!f41803c && !((W9) J6.a(arrayList, 1)).S()) {
                throw new AssertionError();
            }
        }
    }
}
