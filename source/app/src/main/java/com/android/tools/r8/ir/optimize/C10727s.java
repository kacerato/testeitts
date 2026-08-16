package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC7500gv;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.CE;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.internal.InterfaceC5381Je0;
import com.android.tools.r8.internal.W5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class C10727s extends AbstractC7500gv {

    public static final boolean f54926d = true;

    public final InterfaceC5381Je0 f54927a;

    public final EW.a f54928b;

    public final int[] f54929c;

    public C10727s(C7215fB c7215fB, InterfaceC5381Je0 interfaceC5381Je0) {
        this.f54927a = interfaceC5381Je0;
        this.f54928b = c7215fB.f47895b;
        int[] iArr = new int[c7215fB.f47899f.b() + 1];
        this.f54929c = iArr;
        Arrays.fill(iArr, -1);
    }

    @Override
    public final boolean a(Object obj, Object obj2) {
        W5 w52 = (W5) obj;
        W5 w53 = (W5) obj2;
        CE l10 = w52.l();
        CE l11 = w53.l();
        if (l10.size() != l11.size()) {
            return false;
        }
        AbstractC10561zE abstractC10561zE = l10.f39167c;
        AbstractC10561zE abstractC10561zE2 = l11.f39167c;
        while (abstractC10561zE != null) {
            if (!abstractC10561zE.a(abstractC10561zE2, this.f54927a, this.f54928b)) {
                return false;
            }
            abstractC10561zE = abstractC10561zE.Y0();
            abstractC10561zE2 = abstractC10561zE2.Y0();
        }
        if (!this.f54927a.a(w52, w53) || !w52.j().equals(w53.j())) {
            return false;
        }
        if (f54926d) {
            return true;
        }
        List<W5> v10 = w52.v();
        List<W5> v11 = w53.v();
        if (v10.size() == v11.size()) {
            for (int i10 = 0; i10 < v10.size(); i10++) {
                if (v10.get(i10) == v11.get(i10)) {
                }
            }
            return true;
        }
        throw new AssertionError();
    }

    @Override
    public final int a(Object obj) {
        W5 w52 = (W5) obj;
        int i10 = this.f54929c[w52.q()];
        if (i10 != -1) {
            if (f54926d || i10 == a(w52)) {
                return i10;
            }
            throw new AssertionError();
        }
        int a10 = a(w52);
        this.f54929c[w52.q()] = a10;
        return a10;
    }

    public final int a(W5 w52) {
        CE l10 = w52.l();
        int size = l10.size();
        int i10 = 0;
        for (AbstractC10561zE abstractC10561zE = l10.f39167c; abstractC10561zE != null; abstractC10561zE = abstractC10561zE.Y0()) {
            i10++;
            if (i10 > 5) {
                break;
            }
            int b10 = (abstractC10561zE.d() == null || !abstractC10561zE.d().T()) ? 0 : this.f54927a.b(abstractC10561zE.d(), abstractC10561zE.f54322g);
            ArrayList arrayList = abstractC10561zE.f54321f;
            int size2 = arrayList.size();
            int i11 = 0;
            while (i11 < size2) {
                Object obj = arrayList.get(i11);
                i11++;
                C10340xw0 c10340xw0 = (C10340xw0) obj;
                b10 <<= 4;
                if (c10340xw0.T()) {
                    b10 += this.f54927a.b(c10340xw0, abstractC10561zE.f54322g);
                }
            }
            size = (size * 3) + b10;
        }
        return size;
    }
}
