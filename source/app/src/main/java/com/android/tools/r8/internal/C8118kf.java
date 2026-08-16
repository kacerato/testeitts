package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class C8118kf extends AbstractC7500gv {

    public static final boolean f49702b = true;

    public final C8570nJ f49703a;

    public C8118kf(C8570nJ c8570nJ) {
        this.f49703a = c8570nJ;
    }

    @Override
    public final boolean a(Object obj, Object obj2) {
        AbstractC10561zE abstractC10561zE = (AbstractC10561zE) obj;
        AbstractC10561zE abstractC10561zE2 = (AbstractC10561zE) obj2;
        abstractC10561zE.getClass();
        if (abstractC10561zE instanceof C9450se) {
            C8570nJ c8570nJ = this.f49703a;
            c8570nJ.getClass();
            if (c8570nJ.a(C2.L)) {
                return false;
            }
        }
        if (!abstractC10561zE.b(abstractC10561zE2)) {
            return false;
        }
        if (abstractC10561zE.s1() && abstractC10561zE.C().v2()) {
            C10340xw0 c10340xw0 = (C10340xw0) abstractC10561zE.f54321f.get(0);
            C10340xw0 c10340xw02 = (C10340xw0) abstractC10561zE.f54321f.get(1);
            C10340xw0 c10340xw03 = (C10340xw0) abstractC10561zE2.f54321f.get(0);
            C10340xw0 c10340xw04 = (C10340xw0) abstractC10561zE2.f54321f.get(1);
            return (a(c10340xw0, c10340xw03) && a(c10340xw02, c10340xw04)) || (a(c10340xw0, c10340xw04) && a(c10340xw02, c10340xw03));
        }
        if (!f49702b && abstractC10561zE.f54321f.size() != abstractC10561zE2.f54321f.size()) {
            throw new AssertionError();
        }
        for (int i10 = 0; i10 < abstractC10561zE.f54321f.size(); i10++) {
            if (!a((C10340xw0) abstractC10561zE.f54321f.get(i10), (C10340xw0) abstractC10561zE2.f54321f.get(i10))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final int a(Object obj) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        AbstractC10561zE abstractC10561zE = (AbstractC10561zE) obj;
        int hashCode = abstractC10561zE.getClass().hashCode();
        int i15 = 0;
        if (abstractC10561zE.s1()) {
            AbstractC9702u6 C10 = abstractC10561zE.C();
            C10340xw0 c10340xw0 = (C10340xw0) abstractC10561zE.f54321f.get(0);
            C10340xw0 c10340xw02 = (C10340xw0) abstractC10561zE.f54321f.get(1);
            if (C10.v2()) {
                int i16 = hashCode * 29;
                if (c10340xw0.K()) {
                    i13 = Long.hashCode(c10340xw0.f53886c.J().w2());
                } else {
                    i13 = c10340xw0.f53885b;
                }
                if (c10340xw02.K()) {
                    i14 = Long.hashCode(c10340xw02.f53886c.J().w2());
                } else {
                    i14 = c10340xw02.f53885b;
                }
                return (i14 * i13) + i16 + hashCode;
            }
            int i17 = hashCode * 29;
            if (c10340xw0.K()) {
                i11 = Long.hashCode(c10340xw0.f53886c.J().w2());
            } else {
                i11 = c10340xw0.f53885b;
            }
            int i18 = i11 + i17 + hashCode;
            int i19 = i18 * 29;
            if (c10340xw02.K()) {
                i12 = Long.hashCode(c10340xw02.f53886c.J().w2());
            } else {
                i12 = c10340xw02.f53885b;
            }
            return i12 + i19 + i18;
        }
        ArrayList arrayList = abstractC10561zE.f54321f;
        int size = arrayList.size();
        while (i15 < size) {
            Object obj2 = arrayList.get(i15);
            i15++;
            C10340xw0 c10340xw03 = (C10340xw0) obj2;
            int i20 = hashCode * 29;
            if (c10340xw03.K()) {
                i10 = Long.hashCode(c10340xw03.f53886c.J().w2());
            } else {
                i10 = c10340xw03.f53885b;
            }
            hashCode += i10 + i20;
        }
        return hashCode;
    }

    public static boolean a(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        if (c10340xw0.equals(c10340xw02)) {
            return true;
        }
        if (c10340xw0.K() && c10340xw02.K()) {
            return c10340xw0.f53886c.b(c10340xw02.f53886c);
        }
        return false;
    }
}
