package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Objects;

public final class U40 extends Z40 {

    public static final boolean f44660i = true;

    public final com.android.tools.r8.graph.A2 f44661c;

    public final EnumC8071kK f44662d;

    public final boolean f44663e;

    public final com.android.tools.r8.graph.I2 f44664f;

    public final boolean f44665g;

    public final boolean f44666h;

    public U40(com.android.tools.r8.graph.A2 a22, EnumC8071kK enumC8071kK, boolean z10, EnumC5477Kw0[] enumC5477Kw0Arr, com.android.tools.r8.graph.I2 i22, boolean z11) {
        boolean z12 = enumC5477Kw0Arr.length != a22.f36127i.f36441f.f36675b.length;
        this.f44665g = z12;
        if (!f44660i && z12 && !enumC5477Kw0Arr[0].a()) {
            throw new AssertionError();
        }
        this.f44661c = a22;
        this.f44662d = enumC8071kK;
        this.f44663e = z10;
        this.f44664f = i22;
        this.f44666h = z11;
    }

    @Override
    public final String a() {
        return "; method: " + this.f44661c.j0();
    }

    @Override
    public final String b() {
        return "INVOKE-" + this.f44662d.name();
    }

    @Override
    public final Y40 c() {
        return Y40.f45919g;
    }

    @Override
    public final int compareTo(Object obj) {
        int compareTo;
        Z40 z40 = (Z40) obj;
        if (!(z40 instanceof U40)) {
            return Y40.f45919g.compareTo(z40.c());
        }
        U40 u40 = (U40) z40;
        int compareTo2 = this.f44661c.compareTo(u40.f44661c);
        if (compareTo2 != 0) {
            return compareTo2;
        }
        int compareTo3 = this.f44662d.compareTo(u40.f44662d);
        if (compareTo3 != 0) {
            return compareTo3;
        }
        int compare = Boolean.compare(this.f44663e, u40.f44663e);
        if (compare != 0) {
            return compare;
        }
        com.android.tools.r8.graph.I2 i22 = this.f44664f;
        if (i22 != null && (compareTo = i22.compareTo(u40.f44664f)) != 0) {
            return compareTo;
        }
        int compare2 = Boolean.compare(this.f44666h, u40.f44666h);
        if (compare2 != 0) {
            return compare2;
        }
        if (f44660i || equals(z40)) {
            return 0;
        }
        throw new AssertionError();
    }

    @Override
    public final boolean d() {
        return this.f44663e;
    }

    @Override
    public final int e() {
        boolean z10 = this.f44665g;
        return (z10 ? 1 : 0) + this.f44661c.f36127i.f36441f.f36675b.length;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof U40)) {
            return false;
        }
        U40 u40 = (U40) obj;
        if (this.f44661c.a(u40.f44661c) && this.f44662d == u40.f44662d && this.f44663e == u40.f44663e) {
            com.android.tools.r8.graph.I2 i22 = this.f44664f;
            com.android.tools.r8.graph.I2 i23 = u40.f44664f;
            int i10 = com.android.tools.r8.graph.I2.f36439g;
            if (i22 == i23 && this.f44666h == u40.f44666h) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return Objects.hash(Y40.f45919g, this.f44661c, this.f44662d, Boolean.valueOf(this.f44663e), this.f44664f, Boolean.valueOf(this.f44666h));
    }

    @Override
    public final int a(C6382aB c6382aB, W40 w40, int i10) {
        C10340xw0 c10340xw0;
        EnumC5592Mw0 a10;
        ArrayList arrayList = new ArrayList(e());
        int i11 = 0;
        while (i11 < e()) {
            int i12 = i10 + 1;
            int intValue = ((Integer) w40.f45282c.get(i10)).intValue();
            if (intValue == -1) {
                intValue = w40.f45281b.size();
            }
            if (!this.f44665g) {
                a10 = EnumC5592Mw0.a(this.f44661c.f36127i.f36441f.f36675b[i11]);
            } else if (i11 == 0) {
                a10 = EnumC5592Mw0.f42461b;
            } else {
                a10 = EnumC5592Mw0.a(this.f44661c.f36127i.f36441f.f36675b[i11 - 1]);
            }
            arrayList.add(c6382aB.b(intValue, a10));
            i11++;
            i10 = i12;
        }
        if (this.f44663e) {
            c10340xw0 = c6382aB.a(w40.f45281b.size(), 2, AbstractC8999pu0.a(this.f44661c.f36127i.f36440e, C8854p10.h(), (C4798y<?>) c6382aB.f46457p));
        } else {
            c10340xw0 = null;
        }
        c6382aB.a(NJ.a(this.f44662d, this.f44661c, this.f44664f, c10340xw0, arrayList, this.f44666h));
        return i10;
    }

    @Override
    public final boolean a(AbstractC5308Hz abstractC5308Hz) {
        com.android.tools.r8.graph.A2 a22 = this.f44661c;
        abstractC5308Hz.getClass();
        return !abstractC5308Hz.d(AbstractC5308Hz.g(), a22).a(this.f44661c);
    }
}
