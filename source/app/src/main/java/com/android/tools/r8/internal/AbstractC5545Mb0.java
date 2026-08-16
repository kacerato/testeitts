package com.android.tools.r8.internal;

import com.android.tools.r8.internal.JP;
import java.util.ArrayList;
import java.util.List;

public abstract class AbstractC5545Mb0 {
    public static final JP a(L80 l80, VL vl2) {
        GJ.c(vl2, "strings");
        if (((1 << AbstractC10509yx.f54217O.f53898a) & l80.f41890n) != 0) {
            K80 k80 = l80.f41880d;
            int i10 = k80 != null ? AbstractC5488Lb0.f42018a[k80.ordinal()] : -1;
            if (i10 == 1) {
                return new WP((byte) l80.f41881e);
            }
            if (i10 == 2) {
                return new ZP((short) l80.f41881e);
            }
            if (i10 == 3) {
                return new XP((int) l80.f41881e);
            }
            if (i10 == 4) {
                return new YP(l80.f41881e);
            }
            throw new IllegalStateException(("Cannot read value of unsigned type: " + ((Object) l80.f41880d)).toString());
        }
        K80 k802 = l80.f41880d;
        switch (k802 != null ? AbstractC5488Lb0.f42018a[k802.ordinal()] : -1) {
            case -1:
                return null;
            case 0:
            default:
                throw new C00();
            case 1:
                return new LP((byte) l80.f41881e);
            case 2:
                return new UP((short) l80.f41881e);
            case 3:
                return new QP((int) l80.f41881e);
            case 4:
                return new TP(l80.f41881e);
            case 5:
                return new MP((char) l80.f41881e);
            case 6:
                return new PP(l80.f41882f);
            case 7:
                return new NP(l80.f41883g);
            case 8:
                return new KP(l80.f41881e != 0);
            case 9:
                return new VP(vl2.a(l80.f41884h));
            case 10:
                String a10 = a(vl2, l80.f41885i);
                int i11 = l80.f41889m;
                if (i11 == 0) {
                    return new RP(a10);
                }
                return new IP(i11, a10);
            case 11:
                return new OP(a(vl2, l80.f41885i), vl2.a(l80.f41886j));
            case 12:
                O80 o80 = l80.f41887k;
                GJ.b(o80, "getAnnotation(...)");
                return new HP(a(o80, vl2));
            case 13:
                List<L80> list = l80.f41888l;
                GJ.b(list, "getArrayElementList(...)");
                ArrayList arrayList = new ArrayList();
                for (L80 l802 : list) {
                    GJ.a(l802);
                    JP a11 = a(l802, vl2);
                    if (a11 != null) {
                        arrayList.add(a11);
                    }
                }
                return new JP.a(arrayList);
        }
    }

    public static final String a(VL vl2, int i10) {
        GJ.c(vl2, "<this>");
        String a10 = vl2.a(i10);
        return vl2.f45025b.contains(Integer.valueOf(i10)) ? ".".concat(a10) : a10;
    }

    public static final GP a(O80 o80, VL vl2) {
        GJ.c(o80, "<this>");
        GJ.c(vl2, "strings");
        String a10 = a(vl2, o80.f42792d);
        List<M80> list = o80.f42793e;
        GJ.b(list, "getArgumentList(...)");
        ArrayList arrayList = new ArrayList();
        for (M80 m80 : list) {
            L80 l80 = m80.f42192e;
            GJ.b(l80, "getValue(...)");
            JP a11 = a(l80, vl2);
            C8866p50 c8866p50 = a11 != null ? new C8866p50(vl2.a(m80.f42191d), a11) : null;
            if (c8866p50 != null) {
                arrayList.add(c8866p50);
            }
        }
        return new GP(a10, AbstractC9762uV.a(arrayList));
    }
}
