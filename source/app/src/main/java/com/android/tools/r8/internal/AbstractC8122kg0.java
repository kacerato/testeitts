package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public abstract class AbstractC8122kg0 {
    public static final C6795ci0 a(C6795ci0 c6795ci0, List list, boolean z10) {
        GJ.c(c6795ci0, "<this>");
        GJ.c(list, "ids");
        if (list.isEmpty()) {
            return c6795ci0;
        }
        List a10 = AbstractC6303Ze.a((Collection) list);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        Iterator it = a10.iterator();
        int i10 = -1;
        int i11 = -1;
        while (it.hasNext()) {
            int intValue = ((Number) it.next()).intValue();
            int i12 = intValue >>> 24;
            int i13 = (16711680 & intValue) >> 16;
            int i14 = intValue & 65535;
            if (i12 != i10) {
                linkedHashMap2 = new LinkedHashMap();
                linkedHashMap.put(Integer.valueOf(i12), linkedHashMap2);
                i11 = -1;
                i10 = i12;
            }
            if (i13 != i11) {
                arrayList = new ArrayList();
                linkedHashMap2.put(Integer.valueOf(i13), arrayList);
                i11 = i13;
            }
            arrayList.add(Integer.valueOf(i14));
        }
        C6629bi0 builder = c6795ci0.toBuilder();
        C10289xf0 f10 = builder.d().f();
        GJ.b(f10, "tableBuilder.packageBuilderList");
        Iterator it2 = f10.iterator();
        while (it2.hasNext()) {
            C10462yh0 c10462yh0 = (C10462yh0) it2.next();
            C4983Ch0 c4983Ch0 = c10462yh0.f54115c;
            if (c4983Ch0 == null) {
                c4983Ch0 = C4983Ch0.f39315d;
            }
            Map map = (Map) linkedHashMap.get(Integer.valueOf(c4983Ch0.f39317b));
            if (map != null) {
                C10289xf0 f11 = c10462yh0.c().f();
                GJ.b(f11, "it.typeBuilderList");
                Iterator it3 = f11.iterator();
                while (it3.hasNext()) {
                    C6028Ui0 c6028Ui0 = (C6028Ui0) it3.next();
                    C6256Yi0 c6256Yi0 = c6028Ui0.f44841c;
                    if (c6256Yi0 == null) {
                        c6256Yi0 = C6256Yi0.f46066d;
                    }
                    List list2 = (List) map.get(Integer.valueOf(c6256Yi0.f46068b));
                    if (list2 != null) {
                        C10289xf0 f12 = c6028Ui0.c().f();
                        GJ.b(f12, "type.entryBuilderList");
                        Iterator it4 = f12.iterator();
                        while (it4.hasNext()) {
                            C5966Tg0 c5966Tg0 = (C5966Tg0) it4.next();
                            C6195Xg0 c6195Xg0 = c5966Tg0.f44535c;
                            if (c6195Xg0 == null) {
                                c6195Xg0 = C6195Xg0.f45787d;
                            }
                            if (list2.contains(Integer.valueOf(c6195Xg0.f45789b))) {
                                C4862Af0 c4862Af0 = c5966Tg0.f44541i;
                                if (c4862Af0 == null) {
                                    c5966Tg0.f44540h = Collections.EMPTY_LIST;
                                    c5966Tg0.f44534b &= -2;
                                    c5966Tg0.onChanged();
                                } else {
                                    c4862Af0.c();
                                }
                                if (z10) {
                                    c5966Tg0.f44536d = C6024Ug0.f44826j.getName();
                                    c5966Tg0.onChanged();
                                }
                                if (c5966Tg0.f44539g != null) {
                                    c5966Tg0.f44539g = null;
                                    c5966Tg0.onChanged();
                                }
                            }
                        }
                    }
                }
            }
        }
        return builder.build();
    }

    public static final int a(C10629zh0 c10629zh0, C6085Vi0 c6085Vi0, C6024Ug0 c6024Ug0) {
        C4983Ch0 c4983Ch0 = c10629zh0.f54452b;
        if (c4983Ch0 == null) {
            c4983Ch0 = C4983Ch0.f39315d;
        }
        int i10 = c4983Ch0.f39317b << 24;
        C6256Yi0 c6256Yi0 = c6085Vi0.f45131b;
        if (c6256Yi0 == null) {
            c6256Yi0 = C6256Yi0.f46066d;
        }
        int i11 = i10 | (c6256Yi0.f46068b << 16);
        C6195Xg0 c6195Xg0 = c6024Ug0.f44828b;
        if (c6195Xg0 == null) {
            c6195Xg0 = C6195Xg0.f45787d;
        }
        return i11 | c6195Xg0.f45789b;
    }
}
