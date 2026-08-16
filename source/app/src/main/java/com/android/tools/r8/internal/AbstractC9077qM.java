package com.android.tools.r8.internal;

import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class AbstractC9077qM {
    public static C9418sQ a(com.android.tools.r8.kotlin.S s10) {
        String[] strArr = s10.f55165c;
        if (strArr.length == 0) {
            strArr = null;
        }
        if (strArr == null) {
            throw new C8221lD("Metadata is missing: kotlin.Metadata.data1 must not be an empty array");
        }
        String[] strArr2 = s10.f55166d;
        C10503yv c10503yv = AbstractC8910pM.f51506a;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(N6.a(strArr));
        VL a10 = AbstractC8910pM.a(byteArrayInputStream, strArr2);
        C9378s90 c9378s90 = (C9378s90) AbstractC7851j1.a(C9378s90.f52296m.a(byteArrayInputStream, c10503yv));
        boolean z10 = new ML(s10.f55164b).compareTo(new ML(1, 4, 0)) < 0;
        C6049Ut c6049Ut = C6049Ut.f44892b;
        GJ.c(c9378s90, "<this>");
        C9418sQ c9418sQ = new C9418sQ();
        W90 w90 = c9378s90.f52302h;
        GJ.b(w90, "getTypeTable(...)");
        C4951Bu0 c4951Bu0 = new C4951Bu0(w90);
        C6341Zw0 c6341Zw0 = C6341Zw0.f46380b;
        C7605ha0 c7605ha0 = c9378s90.f52303i;
        GJ.b(c7605ha0, "getVersionRequirementTable(...)");
        if (c7605ha0.f48587c.size() != 0) {
            List list = c7605ha0.f48587c;
            GJ.b(list, "getRequirementList(...)");
            c6341Zw0 = new C6341Zw0(list);
        }
        C5430Kb0 c5430Kb0 = new C5430Kb0(a10, c4951Bu0, c6341Zw0, z10, c6049Ut, 16);
        List list2 = c9378s90.f52299e;
        GJ.b(list2, "getFunctionList(...)");
        List list3 = c9378s90.f52300f;
        GJ.b(list3, "getPropertyList(...)");
        List list4 = c9378s90.f52301g;
        GJ.b(list4, "getTypeAliasList(...)");
        AbstractC5661Ob0.a(c9418sQ, list2, list3, list4, c5430Kb0);
        Iterator<E> it = c5430Kb0.f41712h.iterator();
        while (it.hasNext()) {
            ((JL) ((InterfaceC10432yW) it.next())).getClass();
            WL a11 = AL.a(c9418sQ);
            for (C9879v90 c9879v90 : (List) c9378s90.a(AbstractC8743oM.f51225n)) {
                ArrayList arrayList = a11.f45370a;
                GJ.a(c9879v90);
                arrayList.add(AbstractC5661Ob0.a(c9879v90, c5430Kb0));
            }
            C6173Wy c6173Wy = AbstractC8743oM.f51224m;
            GJ.b(c6173Wy, "packageModuleName");
            Integer num = (Integer) AbstractC7937ja0.a(c9378s90, c6173Wy);
            a11.f45371b = num != null ? c5430Kb0.f41705a.a(num.intValue()) : T5.b.f24045b;
        }
        return c9418sQ;
    }
}
