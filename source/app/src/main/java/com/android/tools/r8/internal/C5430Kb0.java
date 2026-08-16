package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

public final class C5430Kb0 {

    public final VL f41705a;

    public final C4951Bu0 f41706b;

    public final C6341Zw0 f41707c;

    public final boolean f41708d;

    public final C5430Kb0 f41709e;

    public final List f41710f;

    public final LinkedHashMap f41711g;

    public final List f41712h;

    public C5430Kb0(VL vl2, C4951Bu0 c4951Bu0, C6341Zw0 c6341Zw0, boolean z10, C5430Kb0 c5430Kb0, List list) {
        GJ.c(vl2, "strings");
        GJ.c(c4951Bu0, "types");
        GJ.c(c6341Zw0, "versionRequirements");
        GJ.c(list, "contextExtensions");
        this.f41705a = vl2;
        this.f41706b = c4951Bu0;
        this.f41707c = c6341Zw0;
        this.f41708d = z10;
        this.f41709e = c5430Kb0;
        this.f41710f = list;
        this.f41711g = new LinkedHashMap();
        InterfaceC10432yW.f54037a.getClass();
        this.f41712h = (List) C10265xW.f53771b.a();
    }

    public final Integer a(int i10) {
        Integer num = (Integer) this.f41711g.get(Integer.valueOf(i10));
        if (num != null) {
            return num;
        }
        C5430Kb0 c5430Kb0 = this.f41709e;
        if (c5430Kb0 != null) {
            return c5430Kb0.a(i10);
        }
        return null;
    }

    public final C5430Kb0 a(List list) {
        GJ.c(list, "typeParameters");
        C5430Kb0 c5430Kb0 = new C5430Kb0(this.f41705a, this.f41706b, this.f41707c, this.f41708d, this, this.f41710f);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            T90 t90 = (T90) it.next();
            c5430Kb0.f41711g.put(Integer.valueOf(t90.f44405f), Integer.valueOf(t90.f44404e));
        }
        return c5430Kb0;
    }

    public C5430Kb0(VL vl2, C4951Bu0 c4951Bu0, C6341Zw0 c6341Zw0, boolean z10, List list, int i10) {
        this(vl2, c4951Bu0, c6341Zw0, z10, (C5430Kb0) null, (i10 & 32) != 0 ? C6049Ut.f44892b : list);
    }
}
