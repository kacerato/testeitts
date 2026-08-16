package com.android.tools.r8.internal;

import com.android.tools.r8.internal.C10656zq0;
import java.util.ArrayList;
import java.util.List;

public final class W40 implements Comparable {

    public static final boolean f45280h = true;

    public final ArrayList f45281b;

    public final ArrayList f45282c;

    public final ArrayList f45283d = new ArrayList();

    public final com.android.tools.r8.graph.M2 f45284e;

    public com.android.tools.r8.graph.I2 f45285f;

    public final C7198f50 f45286g;

    public W40(C7198f50 c7198f50, List list, ArrayList arrayList, ArrayList arrayList2, com.android.tools.r8.graph.M2 m22, int i10, int i11) {
        Z40 u40;
        Y40 y40;
        this.f45286g = c7198f50;
        this.f45281b = arrayList;
        this.f45282c = arrayList2;
        this.f45284e = m22;
        while (i10 < i11) {
            AbstractC10561zE abstractC10561zE = (AbstractC10561zE) list.get(i10);
            if (abstractC10561zE.N1() || abstractC10561zE.c2() || abstractC10561zE.l1()) {
                ArrayList arrayList3 = this.f45283d;
                if (abstractC10561zE.s1()) {
                    AbstractC9702u6 C10 = abstractC10561zE.C();
                    if (C10.h1()) {
                        y40 = Y40.f45914b;
                    } else if (C10 instanceof C5812Qq0) {
                        y40 = Y40.f45915c;
                    } else if (C10 instanceof C7433gY) {
                        y40 = Y40.f45916d;
                    } else if (C10 instanceof C6161Ws) {
                        y40 = Y40.f45917e;
                    } else if (C10 instanceof C7786if0) {
                        y40 = Y40.f45918f;
                    } else if (C10.P1()) {
                        y40 = Y40.f45919g;
                    } else {
                        if (!C10.c2()) {
                            throw new C5417Jv0();
                        }
                        y40 = Y40.f45920h;
                    }
                    u40 = new T40(y40, C10.u2());
                } else if (abstractC10561zE.c2()) {
                    u40 = new V40(abstractC10561zE.w0().f52627k);
                } else {
                    if (!Z40.f46158b && !abstractC10561zE.P1()) {
                        throw new AssertionError();
                    }
                    VJ e02 = abstractC10561zE.e0();
                    EnumC5477Kw0[] enumC5477Kw0Arr = new EnumC5477Kw0[e02.f54321f.size()];
                    ArrayList arrayList4 = e02.f54321f;
                    int size = arrayList4.size();
                    int i12 = 0;
                    int i13 = 0;
                    while (i12 < size) {
                        Object obj = arrayList4.get(i12);
                        i12++;
                        enumC5477Kw0Arr[i13] = ((C10340xw0) obj).Y();
                        i13++;
                    }
                    u40 = new U40(e02.B2(), e02.w2(), e02.d() != null, enumC5477Kw0Arr, e02 instanceof YJ ? e02.h0().f45971n : null, e02.A2());
                }
                arrayList3.add(u40);
            } else if (!abstractC10561zE.v1() && !(abstractC10561zE instanceof C4) && !f45280h) {
                throw new AssertionError((Object) "Unexpected type of instruction in outlining template.");
            }
            i10++;
        }
    }

    public final boolean a(final AbstractC5308Hz abstractC5308Hz) {
        ArrayList arrayList = this.f45281b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) obj;
            abstractC5308Hz.getClass();
            if (abstractC5308Hz.c(AbstractC5308Hz.g(), m22) != m22) {
                return true;
            }
        }
        com.android.tools.r8.graph.M2 m23 = this.f45284e;
        abstractC5308Hz.getClass();
        if (abstractC5308Hz.c(AbstractC5308Hz.g(), m23) != this.f45284e) {
            return true;
        }
        return AbstractC9907vK.b(this.f45283d, new V60() {
            @Override
            public final boolean apply(Object obj2) {
                boolean a10;
                a10 = ((Z40) obj2).a(AbstractC5308Hz.this);
                return a10;
            }
        });
    }

    @Override
    public final int compareTo(Object obj) {
        W40 w40 = (W40) obj;
        if (this == w40) {
            return 0;
        }
        if (this.f45285f == null) {
            this.f45285f = this.f45286g.f47857e.a(this.f45284e, (com.android.tools.r8.graph.M2[]) this.f45281b.toArray(com.android.tools.r8.graph.M2.f36589h));
        }
        com.android.tools.r8.graph.I2 i22 = this.f45285f;
        if (w40.f45285f == null) {
            w40.f45285f = w40.f45286g.f47857e.a(w40.f45284e, (com.android.tools.r8.graph.M2[]) w40.f45281b.toArray(com.android.tools.r8.graph.M2.f36589h));
        }
        int compareTo = i22.compareTo(w40.f45285f);
        if (compareTo != 0) {
            if (f45280h || !equals(w40)) {
                return compareTo;
            }
            throw new AssertionError();
        }
        boolean z10 = f45280h;
        if (!z10 && this.f45281b.size() != w40.f45281b.size()) {
            throw new AssertionError();
        }
        ArrayList arrayList = this.f45283d;
        ArrayList arrayList2 = w40.f45283d;
        int size = arrayList.size() - arrayList2.size();
        if (size != 0) {
            if (z10 || !equals(w40)) {
                return size;
            }
            throw new AssertionError();
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            Z40 z40 = (Z40) arrayList.get(i10);
            Z40 z402 = (Z40) arrayList2.get(i10);
            int compareTo2 = z40.compareTo(z402);
            if (compareTo2 != 0) {
                if (f45280h || !z40.equals(z402)) {
                    return compareTo2;
                }
                throw new AssertionError();
            }
        }
        int size2 = this.f45282c.size() - w40.f45282c.size();
        if (size2 != 0) {
            if (f45280h || !equals(w40)) {
                return size2;
            }
            throw new AssertionError();
        }
        for (int i11 = 0; i11 < this.f45282c.size(); i11++) {
            int intValue = ((Integer) this.f45282c.get(i11)).intValue() - ((Integer) w40.f45282c.get(i11)).intValue();
            if (intValue != 0) {
                if (f45280h || !equals(w40)) {
                    return intValue;
                }
                throw new AssertionError();
            }
        }
        if (f45280h || equals(w40)) {
            return 0;
        }
        throw new AssertionError();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof W40)) {
            return false;
        }
        W40 w40 = (W40) obj;
        ArrayList arrayList = this.f45283d;
        ArrayList arrayList2 = w40.f45283d;
        if (arrayList.size() != arrayList2.size()) {
            return false;
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            if (!((Z40) arrayList.get(i10)).equals((Z40) arrayList2.get(i10))) {
                return false;
            }
        }
        return this.f45281b.equals(w40.f45281b) && this.f45282c.equals(w40.f45282c) && this.f45284e == w40.f45284e;
    }

    public final int hashCode() {
        int size = this.f45283d.size();
        int i10 = 0;
        for (int i11 = 0; i11 < this.f45283d.size() && i11 < 5; i11++) {
            i10 = (i10 << 4) + ((Z40) this.f45283d.get(i11)).hashCode();
            size = (size * 3) + i10;
        }
        return size;
    }

    public final String toString() {
        int size = this.f45281b.size();
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) this.f45284e);
        sb2.append(" anOutline");
        C10656zq0.a(sb2, this.f45281b, ", ", C10656zq0.a.f54549b);
        sb2.append("\n");
        ArrayList arrayList = this.f45283d;
        int size2 = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size2) {
            Object obj = arrayList.get(i10);
            i10++;
            Z40 z40 = (Z40) obj;
            sb2.append(z40.toString());
            C10656zq0.b(sb2, z40.b(), 20);
            if (z40.d()) {
                sb2.append("v" + size);
                sb2.append(" <- ");
            }
            int i12 = 0;
            while (i12 < z40.e()) {
                sb2.append(i12 > 0 ? ", " : "");
                sb2.append("v");
                int i13 = i11 + 1;
                int intValue = ((Integer) this.f45282c.get(i11)).intValue();
                if (intValue >= 0) {
                    sb2.append(intValue);
                } else {
                    sb2.append(size);
                }
                i12++;
                i11 = i13;
            }
            sb2.append(z40.a());
            sb2.append("\n");
        }
        if (this.f45284e == this.f45286g.f47857e.f37905M1) {
            sb2.append("Return-Void");
        } else {
            C10656zq0.b(sb2, "Return", 20);
            sb2.append("v" + size);
        }
        sb2.append("\n");
        sb2.append((Object) this.f45282c);
        return sb2.toString();
    }
}
