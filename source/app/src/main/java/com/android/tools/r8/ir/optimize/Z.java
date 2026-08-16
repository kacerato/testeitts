package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC7500gv;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.internal.InterfaceC5381Je0;
import java.util.ArrayList;

public final class Z extends AbstractC7500gv {

    public final InterfaceC5381Je0 f54826a;

    public final EW.a f54827b;

    public Z(C7215fB c7215fB, InterfaceC5381Je0 interfaceC5381Je0) {
        this.f54826a = interfaceC5381Je0;
        this.f54827b = c7215fB.f47895b;
    }

    @Override
    public final boolean a(Object obj, Object obj2) {
        AbstractC10561zE abstractC10561zE = (AbstractC10561zE) obj;
        AbstractC10561zE abstractC10561zE2 = (AbstractC10561zE) obj2;
        return abstractC10561zE.a(abstractC10561zE2, this.f54826a, this.f54827b) && abstractC10561zE.b().j().equals(abstractC10561zE2.b().j());
    }

    @Override
    public final int a(Object obj) {
        AbstractC10561zE abstractC10561zE = (AbstractC10561zE) obj;
        int i10 = 0;
        int b10 = (abstractC10561zE.d() == null || !abstractC10561zE.d().T()) ? 0 : this.f54826a.b(abstractC10561zE.d(), abstractC10561zE.f54322g);
        ArrayList arrayList = abstractC10561zE.f54321f;
        int size = arrayList.size();
        while (i10 < size) {
            Object obj2 = arrayList.get(i10);
            i10++;
            C10340xw0 c10340xw0 = (C10340xw0) obj2;
            b10 <<= 4;
            if (c10340xw0.T()) {
                b10 += this.f54826a.b(c10340xw0, abstractC10561zE.f54322g);
            }
        }
        return abstractC10561zE.b().j().hashCode() + (b10 * 37);
    }
}
