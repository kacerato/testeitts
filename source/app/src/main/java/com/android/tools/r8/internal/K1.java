package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public abstract class K1 {

    public static final boolean f41550b = true;

    public final C4798y f41551a;

    public K1(C4798y c4798y) {
        this.f41551a = c4798y;
    }

    public final F1 a(F1 f12, F1 f13, AbstractC8999pu0 abstractC8999pu0) {
        f12.getClass();
        if ((f12 instanceof A7) || f13.isUnknown()) {
            return f13;
        }
        if (f12.isUnknown() || (f13 instanceof A7) || f12.equals(f13)) {
            return f12;
        }
        boolean z10 = f12 instanceof N1;
        if (z10 || (f13 instanceof N1)) {
            if (!f41550b && z10 && (f13 instanceof N1)) {
                throw new AssertionError();
            }
            int i10 = F1.f40064a;
            return C10504yv0.f54195b;
        }
        if (abstractC8999pu0.y()) {
            if (f12 instanceof C5283Hm0) {
                return C8520n10.a(f13);
            }
            if (f13 instanceof C5283Hm0) {
                return C8520n10.a(f12);
            }
            if ((f12 instanceof C8520n10) && f12.I().f50486b.equals(f13)) {
                return f12;
            }
            if ((f13 instanceof C8520n10) && f13.I().f50486b.equals(f12)) {
                return f13;
            }
            int i11 = F1.f40064a;
            return C10504yv0.f54195b;
        }
        boolean z11 = f41550b;
        if (!z11 && !abstractC8999pu0.x()) {
            throw new AssertionError();
        }
        D70 c10 = abstractC8999pu0.c();
        if (!z11 && (f12 instanceof C8520n10)) {
            throw new AssertionError();
        }
        if (!z11 && (f13 instanceof C8520n10)) {
            throw new AssertionError();
        }
        c10.getClass();
        if (!(c10 instanceof C9736uI)) {
            int i12 = F1.f40064a;
            return C10504yv0.f54195b;
        }
        if (!f12.V() || !f13.V()) {
            int i13 = F1.f40064a;
            return C10504yv0.f54195b;
        }
        if (!(f12 instanceof C5341Im0) && (f13 instanceof C5341Im0)) {
            f13 = f12;
            f12 = f13;
        }
        if (f12 instanceof C5341Im0) {
            C5341Im0 m10 = f12.m();
            if (f13 instanceof C5341Im0) {
                C5341Im0 m11 = f13.m();
                return this.f41551a.f38427t.a(((int) m10.f41207c) & ((int) m11.f41207c), m10.S() & m11.S());
            }
            if (!z11 && !(f13 instanceof C5392Jj)) {
                throw new AssertionError();
            }
            C5392Jj H10 = f13.H();
            G1 g12 = this.f41551a.f38427t;
            H10.getClass();
            int i14 = (int) m10.f41207c;
            int S10 = m10.S();
            int i15 = H10.f41467b;
            return (i15 == i14 && H10.f41468c == S10) ? H10 : g12.a(i14 & i15, S10 & H10.f41468c);
        }
        if (!z11 && !(f12 instanceof C5392Jj)) {
            throw new AssertionError();
        }
        if (!z11 && !(f13 instanceof C5392Jj)) {
            throw new AssertionError();
        }
        C5392Jj H11 = f12.H();
        C5392Jj H12 = f13.H();
        G1 g13 = this.f41551a.f38427t;
        H11.getClass();
        int i16 = H12.f41467b;
        int i17 = H12.f41468c;
        int i18 = H11.f41467b;
        return (i18 == i16 && H11.f41468c == i17) ? H11 : g13.a(i16 & i18, H11.f41468c & i17);
    }
}
