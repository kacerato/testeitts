package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Objects;

public final class T40 extends Z40 {

    public final Y40 f44385c;

    public final T10 f44386d;

    public T40(Y40 y40, T10 t10) {
        this.f44385c = y40;
        this.f44386d = t10;
    }

    @Override
    public final boolean a(AbstractC5308Hz abstractC5308Hz) {
        return false;
    }

    @Override
    public final String b() {
        return this.f44385c.name() + "-" + this.f44386d.name();
    }

    @Override
    public final Y40 c() {
        return this.f44385c;
    }

    @Override
    public final int compareTo(Object obj) {
        Z40 z40 = (Z40) obj;
        if (!(z40 instanceof T40)) {
            return this.f44385c.compareTo(z40.c());
        }
        T40 t40 = (T40) z40;
        int compareTo = this.f44385c.compareTo(t40.f44385c);
        return compareTo != 0 ? compareTo : this.f44386d.compareTo(t40.f44386d);
    }

    @Override
    public final boolean d() {
        return true;
    }

    @Override
    public final int e() {
        return 2;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof T40)) {
            return false;
        }
        T40 t40 = (T40) obj;
        return this.f44385c.equals(t40.f44385c) && this.f44386d.equals(t40.f44386d);
    }

    @Override
    public final int hashCode() {
        return Objects.hash(this.f44385c, this.f44386d);
    }

    @Override
    public final String a() {
        return "";
    }

    @Override
    public final int a(C6382aB c6382aB, W40 w40, int i10) {
        AbstractC10561zE a10;
        ArrayList arrayList = new ArrayList(2);
        int i11 = 0;
        while (i11 < 2) {
            int i12 = i10 + 1;
            int intValue = ((Integer) w40.f45282c.get(i10)).intValue();
            if (intValue == -1) {
                intValue = w40.f45281b.size();
            }
            arrayList.add(c6382aB.b(intValue, EnumC5592Mw0.a(this.f44386d)));
            i11++;
            i10 = i12;
        }
        C10340xw0 a11 = c6382aB.a(w40.f45281b.size(), 2, D70.a(this.f44386d));
        int ordinal = this.f44385c.ordinal();
        if (ordinal == 0) {
            a10 = C6855d2.a(this.f44386d, a11, (C10340xw0) arrayList.get(0), (C10340xw0) arrayList.get(1));
        } else if (ordinal == 1) {
            a10 = new C5812Qq0(this.f44386d, a11, (C10340xw0) arrayList.get(0), (C10340xw0) arrayList.get(1));
        } else if (ordinal == 2) {
            C7433gY c7433gY = new C7433gY(this.f44386d, a11, (C10340xw0) arrayList.get(0), (C10340xw0) arrayList.get(1));
            c7433gY.x2();
            a10 = c7433gY;
        } else if (ordinal == 3) {
            a10 = new C6161Ws(this.f44386d, a11, (C10340xw0) arrayList.get(0), (C10340xw0) arrayList.get(1));
        } else if (ordinal == 4) {
            a10 = new C7786if0(this.f44386d, a11, (C10340xw0) arrayList.get(0), (C10340xw0) arrayList.get(1));
        } else {
            throw new C5417Jv0("Invalid binary operation type: " + ((Object) this.f44385c));
        }
        c6382aB.a(a10);
        return i10;
    }
}
